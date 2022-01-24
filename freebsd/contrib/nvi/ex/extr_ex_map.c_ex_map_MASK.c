#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ seq_t ;
struct TYPE_16__ {int argc; TYPE_2__** argv; int /*<<< orphan*/  iflags; } ;
struct TYPE_15__ {TYPE_1__* gp; } ;
struct TYPE_14__ {char* bp; int /*<<< orphan*/  len; } ;
struct TYPE_13__ {int (* scr_fmap ) (TYPE_3__*,scalar_t__,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ SCR ;
typedef  TYPE_4__ EXCMD ;
typedef  char CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  E_C_FORCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char) ; 
 int FUNC2 (TYPE_3__*,char) ; 
#define  K_COLON 130 
#define  K_ESCAPE 129 
#define  K_NL 128 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_INFO ; 
 scalar_t__ SEQ_COMMAND ; 
 int SEQ_FUNCMAP ; 
 scalar_t__ SEQ_INPUT ; 
 int SEQ_USERDEF ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__,int) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC8 (TYPE_3__*,scalar_t__,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC9(SCR *sp, EXCMD *cmdp)
{
	seq_t stype;
	CHAR_T *input, *p;

	stype = FUNC0(cmdp->iflags, E_C_FORCE) ? SEQ_INPUT : SEQ_COMMAND;

	switch (cmdp->argc) {
	case 0:
		if (FUNC6(sp, stype, 1) == 0)
			FUNC5(sp, M_INFO, stype == SEQ_INPUT ?
			    "132|No input map entries" :
			    "133|No command map entries");
		return (0);
	case 2:
		input = cmdp->argv[0]->bp;
		break;
	default:
		FUNC3();
	}

	/*
	 * If the mapped string is #[0-9]* (and wasn't quoted) then store the
	 * function key mapping.  If the screen specific routine has been set,
	 * call it as well.  Note, the SEQ_FUNCMAP type is persistent across
	 * screen types, maybe the next screen type will get it right.
	 */
	if (input[0] == '#' && FUNC4(input[1])) {
		for (p = input + 2; FUNC4(*p); ++p);
		if (p[0] != '\0')
			goto nofunc;

		if (FUNC7(sp, NULL, 0, input, cmdp->argv[0]->len,
		    cmdp->argv[1]->bp, cmdp->argv[1]->len, stype,
		    SEQ_FUNCMAP | SEQ_USERDEF))
			return (1);
		return (sp->gp->scr_fmap == NULL ? 0 :
		    sp->gp->scr_fmap(sp, stype, input, cmdp->argv[0]->len,
		    cmdp->argv[1]->bp, cmdp->argv[1]->len));
	}

	/* Some single keys may not be remapped in command mode. */
nofunc:	if (stype == SEQ_COMMAND && input[1] == '\0')
		switch (FUNC2(sp, input[0])) {
		case K_COLON:
		case K_ESCAPE:
		case K_NL:
			FUNC5(sp, M_ERR,
			    "134|The %s character may not be remapped",
			    FUNC1(sp, input[0]));
			return (1);
		}
	return (FUNC7(sp, NULL, 0, input, cmdp->argv[0]->len,
	    cmdp->argv[1]->bp, cmdp->argv[1]->len, stype, SEQ_USERDEF));
}