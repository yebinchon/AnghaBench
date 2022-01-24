#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_17__ {int tval; scalar_t__ fval; } ;
struct TYPE_16__ {int tval; } ;
struct TYPE_15__ {TYPE_3__* retval; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ Cell ;

/* Variables and functions */
#define  BREAK 133 
#define  CONTINUE 132 
#define  EXIT 131 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  NEXT 130 
#define  NEXTFILE 129 
 int NUM ; 
#define  RETURN 128 
 int STR ; 
 int /*<<< orphan*/  env ; 
 int errorflag ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_13__* fp ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* jbreak ; 
 TYPE_1__* jcont ; 
 TYPE_1__* jnext ; 
 TYPE_1__* jnextfile ; 
 TYPE_1__* jret ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

Cell *FUNC9(Node **a, int n)	/* break, continue, next, nextfile, return */
{
	Cell *y;

	switch (n) {
	case EXIT:
		if (a[0] != NULL) {
			y = FUNC1(a[0]);
			errorflag = (int) FUNC2(y);
			FUNC8(y);
		}
		FUNC4(env, 1);
	case RETURN:
		if (a[0] != NULL) {
			y = FUNC1(a[0]);
			if ((y->tval & (STR|NUM)) == (STR|NUM)) {
				FUNC7(fp->retval, FUNC3(y));
				fp->retval->fval = FUNC2(y);
				fp->retval->tval |= NUM;
			}
			else if (y->tval & STR)
				FUNC7(fp->retval, FUNC3(y));
			else if (y->tval & NUM)
				FUNC6(fp->retval, FUNC2(y));
			else		/* can't happen */
				FUNC0("bad type variable %d", y->tval);
			FUNC8(y);
		}
		return(jret);
	case NEXT:
		return(jnext);
	case NEXTFILE:
		FUNC5();
		return(jnextfile);
	case BREAK:
		return(jbreak);
	case CONTINUE:
		return(jcont);
	default:	/* can't happen */
		FUNC0("illegal jump type %d", n);
	}
	return 0;	/* not reached */
}