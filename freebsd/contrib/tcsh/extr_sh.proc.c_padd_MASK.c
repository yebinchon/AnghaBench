#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct command {int t_dtyp; int t_dflg; int /*<<< orphan*/ * t_drit; int /*<<< orphan*/ * t_dlef; struct command* t_dcdr; struct command* t_dcar; int /*<<< orphan*/ ** t_dcom; struct command* t_dspr; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int F_APPEND ; 
 int F_PIPEIN ; 
 int F_PIPEOUT ; 
 int F_READ ; 
 int F_STDERR ; 
#define  NODE_AND 133 
#define  NODE_COMMAND 132 
#define  NODE_LIST 131 
#define  NODE_OR 130 
#define  NODE_PAREN 129 
#define  NODE_PIPE 128 
 int /*<<< orphan*/ * STRLparensp ; 
 int /*<<< orphan*/ * STRand ; 
 int /*<<< orphan*/ * STRsemisp ; 
 int /*<<< orphan*/ * STRspLarrow2sp ; 
 int /*<<< orphan*/ * STRspLarrowsp ; 
 int /*<<< orphan*/ * STRspRarrow ; 
 int /*<<< orphan*/ * STRspRarrow2 ; 
 int /*<<< orphan*/ * STRspRparen ; 
 int /*<<< orphan*/ * STRspace ; 
 int /*<<< orphan*/ * STRspand2sp ; 
 int /*<<< orphan*/ * STRspor2sp ; 
 int /*<<< orphan*/ * STRsporsp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct command *t)
{
    Char  **argp;

    if (t == 0)
	return;
    switch (t->t_dtyp) {

    case NODE_PAREN:
	FUNC0(STRLparensp);
	FUNC1(t->t_dspr);
	FUNC0(STRspRparen);
	break;

    case NODE_COMMAND:
	for (argp = t->t_dcom; *argp; argp++) {
	    FUNC0(*argp);
	    if (argp[1])
		FUNC0(STRspace);
	}
	break;

    case NODE_OR:
    case NODE_AND:
    case NODE_PIPE:
    case NODE_LIST:
	FUNC1(t->t_dcar);
	switch (t->t_dtyp) {
	case NODE_OR:
	    FUNC0(STRspor2sp);
	    break;
	case NODE_AND:
	    FUNC0(STRspand2sp);
	    break;
	case NODE_PIPE:
	    FUNC0(STRsporsp);
	    break;
	case NODE_LIST:
	    FUNC0(STRsemisp);
	    break;
	default:
	    break;
	}
	FUNC1(t->t_dcdr);
	return;

    default:
	break;
    }
    if ((t->t_dflg & F_PIPEIN) == 0 && t->t_dlef) {
	FUNC0((t->t_dflg & F_READ) ? STRspLarrow2sp : STRspLarrowsp);
	FUNC0(t->t_dlef);
    }
    if ((t->t_dflg & F_PIPEOUT) == 0 && t->t_drit) {
	FUNC0((t->t_dflg & F_APPEND) ? STRspRarrow2 : STRspRarrow);
	if (t->t_dflg & F_STDERR)
	    FUNC0(STRand);
	FUNC0(STRspace);
	FUNC0(t->t_drit);
    }
}