#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int argc; int /*<<< orphan*/  iflags; TYPE_1__** argv; } ;
struct TYPE_8__ {char* tag_last; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  bp; } ;
typedef  int /*<<< orphan*/  TAGQ ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_2__ EX_PRIVATE ;
typedef  TYPE_3__ EXCMD ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_C_FORCE ; 
 int /*<<< orphan*/  E_NEWSCREEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  O_TAGLENGTH ; 
 long FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(SCR *sp, EXCMD *cmdp)
{
	EX_PRIVATE *exp;
	TAGQ *tqp;
	long tl;

	exp = FUNC0(sp);
	switch (cmdp->argc) {
	case 1:
		if (exp->tag_last != NULL)
			FUNC7(exp->tag_last);

		if ((exp->tag_last = FUNC10(sp, cmdp->argv[0]->bp,
		    cmdp->argv[0]->len)) == NULL) {
			FUNC8(sp, M_SYSERR, NULL);
			return (1);
		}

		/* Taglength may limit the number of characters. */
		if ((tl =
		    FUNC3(sp, O_TAGLENGTH)) != 0 && FUNC4(exp->tag_last) > tl)
			exp->tag_last[tl] = '\0';
		break;
	case 0:
		if (exp->tag_last == NULL) {
			FUNC8(sp, M_ERR, "158|No previous tag entered");
			return (1);
		}
		break;
	default:
		FUNC5();
	}

	/* Get the tag information. */
	if ((tqp = FUNC6(sp, exp->tag_last)) == NULL)
		return (1);

	if (FUNC9(sp, tqp, FUNC2(cmdp, E_NEWSCREEN), 
			       FUNC1(cmdp->iflags, E_C_FORCE)))
		return 1;

	return 0;
}