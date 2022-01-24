#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_30__ {size_t len; int /*<<< orphan*/ * bp; } ;
struct TYPE_29__ {int argc; TYPE_5__** argv; } ;
struct TYPE_28__ {TYPE_1__* gp; } ;
struct TYPE_27__ {int cno; scalar_t__ owrite; scalar_t__ len; int /*<<< orphan*/  insert; int /*<<< orphan*/ * lb; int /*<<< orphan*/  lb_len; int /*<<< orphan*/  offset; int /*<<< orphan*/  ai; } ;
struct TYPE_26__ {int /*<<< orphan*/  (* scr_bell ) (TYPE_3__*) ;} ;
typedef  TYPE_2__ TEXT ;
typedef  TYPE_3__ SCR ;
typedef  TYPE_4__ EXCMD ;
typedef  int /*<<< orphan*/  CHAR_T ;
typedef  TYPE_5__ ARGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int,char*,size_t) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OOBLNO ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC10 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int,TYPE_5__**) ; 

__attribute__((used)) static int
FUNC19(SCR *sp, TEXT *tp, int *redrawp)
{
	struct stat sb;
	ARGS **argv;
	EXCMD cmd;
	size_t indx, len, nlen, off;
	int argc;
	CHAR_T *p, *t, *bp;
	char *np, *epd = NULL;
	size_t nplen;
	int fstwd = 1;

	*redrawp = 0;
	FUNC13(sp, &cmd, 0, 0, OOBLNO, OOBLNO, 0);

	/*
	 * Find the beginning of this "word" -- if we're at the beginning
	 * of the line, it's a special case.
	 */
	if (tp->cno == 1) {
		len = 0;
		p = tp->lb;
	} else {
		CHAR_T *ap;

		for (len = 0,
		    off = FUNC4(tp->ai, tp->offset), ap = tp->lb + off, p = ap;
		    off < tp->cno; ++off, ++ap) {
			if (FUNC3(sp, &cmd, *ap)) {
				if (++off == tp->cno)
					break;
				++ap;
				len += 2;
			} else if (FUNC12(*ap)) {
				p = ap + 1;
				if (len > 0)
					fstwd = 0;
				len = 0;
			} else
				++len;
		}
	}

	/*
	 * If we are at the first word, do ex command completion instead of
	 * file name completion.
	 */
	if (fstwd)
		(void)FUNC9(sp, &cmd, p, len);
	else {
		if ((bp = FUNC11(sp, &cmd, p, len)) == NULL)
			return (1);
		if (FUNC10(sp, &cmd, bp, FUNC6(bp))) {
			FUNC1(sp, bp, 0);
			return (0);
		}
		FUNC1(sp, bp, 0);
	}
	argc = cmd.argc;
	argv = cmd.argv;

	switch (argc) {
	case 0:				/* No matches. */
		(void)sp->gp->scr_bell(sp);
		return (0);
	case 1:				/* One match. */
		/* Always overwrite the old text. */
		nlen = FUNC6(cmd.argv[0]->bp);
		break;
	default:			/* Multiple matches. */
		*redrawp = 1;
		if (FUNC18(sp, argc, argv))
			return (1);

		/* Find the length of the shortest match. */
		for (nlen = cmd.argv[0]->len; --argc > 0;) {
			if (cmd.argv[argc]->len < nlen)
				nlen = cmd.argv[argc]->len;
			for (indx = 0; indx < nlen &&
			    cmd.argv[argc]->bp[indx] == cmd.argv[0]->bp[indx];
			    ++indx);
			nlen = indx;
		}
		break;
	}

	/* Escape the matched part of the path. */
	if (fstwd)
		bp = cmd.argv[0]->bp;
	else {
		if ((bp = FUNC8(sp, &cmd, cmd.argv[0]->bp, nlen)) == NULL)
			return (1);
		nlen = FUNC6(bp);
	}

	/* Overwrite the expanded text first. */
	for (t = bp; len > 0 && nlen > 0; --len, --nlen)
		*p++ = *t++;

	/* If lost text, make the remaining old text overwrite characters. */
	if (len) {
		tp->cno -= len;
		tp->owrite += len;
	}

	/* Overwrite any overwrite characters next. */
	for (; nlen > 0 && tp->owrite > 0; --nlen, --tp->owrite, ++tp->cno)
		*p++ = *t++;

	/* Shift remaining text up, and move the cursor to the end. */
	if (nlen) {
		off = p - tp->lb;
		FUNC0(sp, tp->lb, tp->lb_len, tp->len + nlen);
		p = tp->lb + off;

		tp->cno += nlen;
		tp->len += nlen;

		if (tp->insert != 0)
			(void)FUNC5(p + nlen, p, tp->insert);
		while (nlen--)
			*p++ = *t++;
	}

	if (!fstwd)
		FUNC1(sp, bp, 0);

	/* If not a single match of path, we've done. */
	if (argc != 1 || fstwd)
		return (0);

	/* If a single match and it's a directory, append a '/'. */
	FUNC2(sp, cmd.argv[0]->bp, cmd.argv[0]->len + 1, np, nplen);
	if ((epd = FUNC14(np)) != NULL)
		np = epd;
	if (!FUNC16(np, &sb) && FUNC7(sb.st_mode)) {
		if (tp->owrite == 0) {
			off = p - tp->lb;
			FUNC0(sp, tp->lb, tp->lb_len, tp->len + 1);
			p = tp->lb + off;
			if (tp->insert != 0)
				(void)FUNC5(p + 1, p, tp->insert);
			++tp->len;
		} else
			--tp->owrite;

		++tp->cno;
		*p++ = '/';
	}
	FUNC15(epd);
	return (0);
}