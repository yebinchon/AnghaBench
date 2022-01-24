#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct Strbuf {size_t len; } ;
struct TYPE_4__ {int const* s; int /*<<< orphan*/  len; } ;
struct TYPE_3__ {int* s; } ;
typedef  int Char ;

/* Variables and functions */
 struct Strbuf Strbuf_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct Strbuf*,int*,int) ; 
 int* FUNC3 (struct Strbuf*) ; 
 int* FUNC4 (int*) ; 
 int* FUNC5 (int*,int) ; 
 TYPE_2__ lhsb ; 
 int /*<<< orphan*/  FUNC6 (int const*,int const*) ; 
 TYPE_1__ rhsb ; 

__attribute__((used)) static Char *
FUNC7(Char *cp, Char type, int *adid, size_t *start_pos)
{
    Char *wp;
    const Char *mp, *np;

    switch (type) {

    case 'r':
    case 'e':
    case 'h':
    case 't':
    case 'q':
    case 'x':
    case 'u':
    case 'l':
	wp = FUNC5(cp, type);
	if (wp == 0) {
	    *adid = 0;
	    return (FUNC4(cp));
	}
	*adid = 1;
	return (wp);

    default:
	for (mp = cp + *start_pos; *mp; mp++) {
	    if (FUNC6(mp, lhsb.s)) {
		struct Strbuf wbuf = Strbuf_INIT;

		FUNC2(&wbuf, cp, mp - cp);
		for (np = rhsb.s; *np; np++)
		    switch (*np) {

		    case '\\':
			if (np[1] == '&')
			    np++;
			/* fall into ... */

		    default:
			FUNC1(&wbuf, *np);
			continue;

		    case '&':
			FUNC0(&wbuf, lhsb.s);
			continue;
		    }
		*start_pos = wbuf.len;
		FUNC0(&wbuf, mp + lhsb.len);
		*adid = 1;
		return FUNC3(&wbuf);
	    }
	}
	*adid = 0;
	return (FUNC4(cp));
    }
}