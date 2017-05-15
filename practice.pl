find_last([X], X).
find_last([_|T], X) :-
	find_last(T, X).
	
find_first([H|_], H).

find_kth([H|_], 0, H).
find_kth([_|T], Y, X) :-
	Z is Y-1,
	find_kth(T, Z, X).
	
get_size(L, X) :- sizeh(L, 0, X).
sizeh([], X, X).
sizeh([_|T], Y, X):-
	Z is Y + 1,
	sizeh(T, Z, X).