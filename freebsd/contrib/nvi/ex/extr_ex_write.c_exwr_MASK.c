#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_44__   TYPE_6__ ;
typedef  struct TYPE_43__   TYPE_5__ ;
typedef  struct TYPE_42__   TYPE_4__ ;
typedef  struct TYPE_41__   TYPE_3__ ;
typedef  struct TYPE_40__   TYPE_2__ ;
typedef  struct TYPE_39__   TYPE_1__ ;
typedef  struct TYPE_38__   TYPE_13__ ;
typedef  struct TYPE_37__   TYPE_12__ ;

/* Type definitions */
typedef  enum which { ____Placeholder_which } which ;
struct TYPE_38__ {scalar_t__ lno; } ;
struct TYPE_37__ {int lno; } ;
struct TYPE_44__ {int argc; TYPE_13__ addr2; TYPE_12__ addr1; TYPE_2__** argv; TYPE_1__* cmd; int /*<<< orphan*/  iflags; } ;
struct TYPE_43__ {char* lastbcomm; } ;
struct TYPE_42__ {char* name; struct TYPE_42__* frp; TYPE_3__* gp; } ;
struct TYPE_41__ {int /*<<< orphan*/  (* scr_rename ) (TYPE_4__*,char*,int) ;} ;
struct TYPE_40__ {char* bp; int /*<<< orphan*/  len; } ;
struct TYPE_39__ {char* usage; int /*<<< orphan*/  name; } ;
typedef  TYPE_4__ SCR ;
typedef  int /*<<< orphan*/  MARK ;
typedef  TYPE_5__ EX_PRIVATE ;
typedef  TYPE_6__ EXCMD ;
typedef  char CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  EXM_FILECOUNT ; 
 int /*<<< orphan*/  EXM_SECURE_F ; 
 int /*<<< orphan*/  EXM_USAGE ; 
 TYPE_5__* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  E_C_FORCE ; 
 int /*<<< orphan*/  FILTER_WRITE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FR_EXNAMED ; 
 int FR_NAMECHANGE ; 
 int FR_TMPEXIT ; 
 int FR_TMPFILE ; 
 int /*<<< orphan*/  FS_ALL ; 
 int /*<<< orphan*/  FS_APPEND ; 
 int /*<<< orphan*/  FS_FORCE ; 
 int /*<<< orphan*/  FS_POSSIBLE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_6__*) ; 
 scalar_t__ FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_SECURE ; 
 int SC_EX_SILENT ; 
 int SC_EX_WAIT_YES ; 
 int SC_VI ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int WRITE ; 
 int XIT ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (TYPE_4__*,TYPE_6__*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (TYPE_4__*,TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_4__*,TYPE_6__*,TYPE_12__*,TYPE_13__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_4__*,TYPE_12__*,TYPE_13__*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,char*,int) ; 
 char* FUNC24 (TYPE_4__*,char*,size_t) ; 
 char* FUNC25 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC26(SCR *sp, EXCMD *cmdp, enum which cmd)
{
	MARK rm;
	int flags;
	char *name;
	CHAR_T *p = NULL;
	size_t nlen;
	char *n;
	int rc;
	EX_PRIVATE *exp;

	FUNC8(sp, cmdp);

	/* All write commands can have an associated '!'. */
	FUNC6(FS_POSSIBLE);
	if (FUNC1(cmdp->iflags, E_C_FORCE))
		FUNC7(FS_FORCE);

	/* Skip any leading whitespace. */
	if (cmdp->argc != 0)
		for (p = cmdp->argv[0]->bp; *p != '\0' && FUNC14(*p); ++p);

	/* If "write !" it's a pipe to a utility. */
	if (cmdp->argc != 0 && cmd == WRITE && *p == '!') {
		/* Secure means no shell access. */
		if (FUNC9(sp, O_SECURE)) {
			FUNC19(sp, cmdp->cmd->name, EXM_SECURE_F);
			return (1);
		}

		/* Expand the argument. */
		for (++p; *p && FUNC14(*p); ++p);
		if (*p == '\0') {
			FUNC16(sp, cmdp->cmd->usage, EXM_USAGE);
			return (1);
		}
		if (FUNC12(sp, cmdp, p, FUNC10(p), 1))
			return (1);

		/* Set the last bang command */
		exp = FUNC0(sp);
		FUNC21(exp->lastbcomm);
		exp->lastbcomm = FUNC25(sp, cmdp->argv[1]->bp,
		    cmdp->argv[1]->len);

		/*
		 * Historically, vi waited after a write filter even if there
		 * wasn't any output from the command.  People complained when
		 * nvi waited only if there was output, wanting the visual cue
		 * that the program hadn't written anything.
		 */
		FUNC4(sp, SC_EX_WAIT_YES);

		/*
		 * !!!
		 * Ignore the return cursor position, the cursor doesn't
		 * move.
		 */
		if (FUNC17(sp, cmdp, &cmdp->addr1,
		    &cmdp->addr2, &rm, cmdp->argv[1]->bp, FILTER_WRITE))
			return (1);

		/* Ex terminates with a bang, even if the command fails. */
		if (!FUNC3(sp, SC_VI) && !FUNC3(sp, SC_EX_SILENT))
			(void)FUNC18(sp, "!\n");

		return (0);
	}

	/* Set the FS_ALL flag if we're writing the entire file. */
	if (cmdp->addr1.lno <= 1 && !FUNC15(sp, cmdp->addr2.lno + 1))
		FUNC7(FS_ALL);

	/* If "write >>" it's an append to a file. */
	if (cmdp->argc != 0 && cmd != XIT && p[0] == '>' && p[1] == '>') {
		FUNC7(FS_APPEND);

		/* Skip ">>" and whitespace. */
		for (p += 2; *p && FUNC14(*p); ++p);
	}

	/* If no other arguments, just write the file back. */
	if (cmdp->argc == 0 || *p == '\0')
		return (FUNC20(sp,
		    &cmdp->addr1, &cmdp->addr2, NULL, flags));

	/* Build an argv so we get an argument count and file expansion. */
	if (FUNC13(sp, cmdp, p, FUNC10(p)))
		return (1);

	/*
	 *  0 args: impossible.
	 *  1 args: impossible (I hope).
	 *  2 args: read it.
	 * >2 args: object, too many args.
	 *
	 * The 1 args case depends on the argv_sexp() function refusing
	 * to return success without at least one non-blank character.
	 */
	switch (cmdp->argc) {
	case 0:
	case 1:
		FUNC11();
		/* NOTREACHED */
	case 2:
		FUNC5(sp, cmdp->argv[1]->bp, cmdp->argv[1]->len+1,
			 n, nlen);
		name = FUNC24(sp, n, nlen - 1);

		/*
		 * !!!
		 * Historically, the read and write commands renamed
		 * "unnamed" files, or, if the file had a name, set
		 * the alternate file name.
		 */
		if (FUNC3(sp->frp, FR_TMPFILE) &&
		    !FUNC3(sp->frp, FR_EXNAMED)) {
			if ((n = FUNC24(sp, name, nlen - 1)) != NULL) {
				FUNC21(sp->frp->name);
				sp->frp->name = n;
			}
			/*
			 * The file has a real name, it's no longer a
			 * temporary, clear the temporary file flags.
			 *
			 * !!!
			 * If we're writing the whole file, FR_NAMECHANGE
			 * will be cleared by the write routine -- this is
			 * historic practice.
			 */
			FUNC2(sp->frp, FR_TMPEXIT | FR_TMPFILE);
			FUNC4(sp->frp, FR_NAMECHANGE | FR_EXNAMED);

			/* Notify the screen. */
			(void)sp->gp->scr_rename(sp, sp->frp->name, 1);
		} else
			FUNC22(sp, name);
		break;
	default:
		FUNC5(sp, p, FUNC10(p) + 1, n, nlen);
		FUNC16(sp, n, EXM_FILECOUNT);
		return (1);
	}

	rc = FUNC20(sp, &cmdp->addr1, &cmdp->addr2, name, flags);

	FUNC21(name);

	return rc;
}