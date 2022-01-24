#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  iflags; } ;
struct TYPE_16__ {int /*<<< orphan*/  tq; } ;
struct TYPE_15__ {scalar_t__ mlen; scalar_t__ msg; int /*<<< orphan*/  slen; int /*<<< orphan*/  search; } ;
struct TYPE_14__ {TYPE_2__* current; int /*<<< orphan*/  tag; } ;
typedef  TYPE_1__ TAGQ ;
typedef  TYPE_2__ TAG ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_3__ EX_PRIVATE ;
typedef  TYPE_4__ EXCMD ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_C_FORCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  TAG_CSCOPE ; 
 int /*<<< orphan*/  TAG_EMPTY ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  q ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC11(SCR *sp, EXCMD *cmdp)
{
	EX_PRIVATE *exp;
	TAG *tp;
	TAGQ *tqp;
	char *np;
	size_t nlen;

	exp = FUNC0(sp);
	if ((tqp = FUNC4(exp->tq)) == NULL) {
		FUNC10(sp, TAG_EMPTY, NULL);
		return (1);
	}
	if ((tp = FUNC5(tqp->current, q)) == NULL) {
		FUNC9(sp, M_ERR, "282|Already at the last tag of this group");
		return (1);
	}
	if (FUNC8(sp, tp, FUNC1(cmdp->iflags, E_C_FORCE)))
		return (1);
	tqp->current = tp;

	if (FUNC2(tqp, TAG_CSCOPE))
		(void)FUNC6(sp, tqp, tp);
	else
		(void)FUNC7(sp, tp->search, tp->slen, tqp->tag);
	if (tqp->current->msg) {
	    FUNC3(sp, tqp->current->msg, tqp->current->mlen + 1,
		     np, nlen);
	    FUNC9(sp, M_INFO, "%s", np);
	}
	return (0);
}