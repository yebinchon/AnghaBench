#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uschar ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_19__ {int nelem; } ;
struct TYPE_18__ {scalar_t__ sval; } ;
struct TYPE_17__ {struct TYPE_17__* nnext; } ;
typedef  TYPE_1__ Node ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ Cell ;
typedef  int Awkfloat ;
typedef  TYPE_3__ Array ;

/* Variables and functions */
 int EOF ; 
#define  FAND 147 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  FATAN 146 
#define  FCOMPL 145 
#define  FCOS 144 
#define  FEXP 143 
#define  FFLUSH 142 
#define  FFOR 141 
#define  FINT 140 
#define  FLENGTH 139 
#define  FLOG 138 
#define  FLSHIFT 137 
#define  FRAND 136 
#define  FRSHIFT 135 
#define  FSIN 134 
#define  FSQRT 133 
#define  FSRAND 132 
#define  FSYSTEM 131 
#define  FTOLOWER 130 
#define  FTOUPPER 129 
#define  FXOR 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 TYPE_2__* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int,int*) ; 
 int /*<<< orphan*/ * FUNC23 (int const,int /*<<< orphan*/ ) ; 
 int FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*,char*) ; 
 int FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int srand_seed ; 
 int /*<<< orphan*/  FUNC30 (unsigned long) ; 
 int /*<<< orphan*/ * stdout ; 
 int FUNC31 (int /*<<< orphan*/ ) ; 
 int FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_2__*) ; 
 int FUNC34 (int /*<<< orphan*/ *) ; 
 char FUNC35 (int /*<<< orphan*/ ) ; 
 char* FUNC36 (int /*<<< orphan*/ ) ; 
 char FUNC37 (int /*<<< orphan*/ ) ; 

Cell *FUNC38(Node **a, int n)	/* builtin functions. a[0] is type, a[1] is arg list */
{
	Cell *x, *y;
	Awkfloat u;
	int t, i;
	Awkfloat tmp;
	char *p, *buf;
	Node *nextarg;
	FILE *fp;
	void FUNC39(void);
	int status = 0;

	t = FUNC24(a[0]);
	x = FUNC10(a[1]);
	nextarg = a[1]->nnext;
	switch (t) {
	case FLENGTH:
		if (FUNC17(x))
			u = ((Array *) x->sval)->nelem;	/* GROT.  should be function*/
		else
			u = FUNC31(FUNC15(x));
		break;
	case FLOG:
		u = FUNC9(FUNC21(FUNC14(x)), "log"); break;
	case FINT:
		FUNC22(FUNC14(x), &u); break;
	case FEXP:
		u = FUNC9(FUNC11(FUNC14(x)), "exp"); break;
	case FSQRT:
		u = FUNC9(FUNC29(FUNC14(x)), "sqrt"); break;
	case FSIN:
		u = FUNC28(FUNC14(x)); break;
	case FCOS:
		u = FUNC8(FUNC14(x)); break;
	case FATAN:
		if (nextarg == NULL) {
			FUNC1("atan2 requires two arguments; returning 1.0");
			u = 1.0;
		} else {
			y = FUNC10(a[1]->nnext);
			u = FUNC7(FUNC14(x), FUNC14(y));
			FUNC33(y);
			nextarg = nextarg->nnext;
		}
		break;
	case FCOMPL:
		u = ~((int)FUNC14(x));
		break;
	case FAND:
		if (nextarg == NULL) {
			FUNC1("and requires two arguments; returning 0");
			u = 0;
			break;
		}
		i = ((int)FUNC14(x));
		while (nextarg != NULL) {
			y = FUNC10(nextarg);
			i &= (int)FUNC14(y);
			FUNC33(y);
			nextarg = nextarg->nnext;
		}
		u = i;
		break;
	case FFOR:
		if (nextarg == NULL) {
			FUNC1("or requires two arguments; returning 0");
			u = 0;
			break;
		}
		i = ((int)FUNC14(x));
		while (nextarg != NULL) {
			y = FUNC10(nextarg);
			i |= (int)FUNC14(y);
			FUNC33(y);
			nextarg = nextarg->nnext;
		}
		u = i;
		break;
	case FXOR:
		if (nextarg == NULL) {
			FUNC1("xor requires two arguments; returning 0");
			u = 0;
			break;
		}
		i = ((int)FUNC14(x));
		while (nextarg != NULL) {
			y = FUNC10(nextarg);
			i ^= (int)FUNC14(y);
			FUNC33(y);
			nextarg = nextarg->nnext;
		}
		u = i;
		break;
	case FLSHIFT:
		if (nextarg == NULL) {
			FUNC1("lshift requires two arguments; returning 0");
			u = 0;
			break;
		}
		y = FUNC10(a[1]->nnext);
		u = ((int)FUNC14(x)) << ((int)FUNC14(y));
		FUNC33(y);
		nextarg = nextarg->nnext;
		break;
	case FRSHIFT:
		if (nextarg == NULL) {
			FUNC1("rshift requires two arguments; returning 0");
			u = 0;
			break;
		}
		y = FUNC10(a[1]->nnext);
		u = ((int)FUNC14(x)) >> ((int)FUNC14(y));
		FUNC33(y);
		nextarg = nextarg->nnext;
		break;
	case FSYSTEM:
		FUNC12(stdout);		/* in case something is buffered already */
		status = FUNC32(FUNC15(x));
		u = status;
		if (status != -1) {
			if (FUNC4(status)) {
				u = FUNC3(status);
			} else if (FUNC5(status)) {
				u = FUNC6(status) + 256;
#ifdef WCOREDUMP
				if (WCOREDUMP(status))
					u += 256;
#endif
			} else	/* something else?!? */
				u = 0;
		}
		break;
	case FRAND:
		/* random() returns numbers in [0..2^31-1]
		 * in order to get a number in [0, 1), divide it by 2^31
		 */
		u = (Awkfloat) FUNC25() / (0x7fffffffL + 0x1UL);
		break;
	case FSRAND:
		if (FUNC19(x))	/* no argument provided */
			u = FUNC34((time_t *)0);
		else
			u = FUNC14(x);
		tmp = u;
		FUNC30((unsigned long) u);
		u = srand_seed;
		srand_seed = tmp;
		break;
	case FTOUPPER:
	case FTOLOWER:
		buf = FUNC36(FUNC15(x));
		if (t == FTOUPPER) {
			for (p = buf; *p; p++)
				if (FUNC18((uschar) *p))
					*p = FUNC37((uschar)*p);
		} else {
			for (p = buf; *p; p++)
				if (FUNC20((uschar) *p))
					*p = FUNC35((uschar)*p);
		}
		FUNC33(x);
		x = FUNC16();
		FUNC27(x, buf);
		FUNC13(buf);
		return x;
	case FFLUSH:
		if (FUNC19(x) || FUNC31(FUNC15(x)) == 0) {
			FUNC39();	/* fflush() or fflush("") -> all */
			u = 0;
		} else if ((fp = FUNC23(FFLUSH, FUNC15(x))) == NULL)
			u = EOF;
		else
			u = FUNC12(fp);
		break;
	default:	/* can't happen */
		FUNC0("illegal function type %d", t);
		break;
	}
	FUNC33(x);
	x = FUNC16();
	FUNC26(x, u);
	if (nextarg != NULL) {
		FUNC1("warning: function has too many arguments");
		for ( ; nextarg; nextarg = nextarg->nnext)
			FUNC10(nextarg);
	}
	return(x);
}