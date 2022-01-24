#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct roff {TYPE_4__* man; int /*<<< orphan*/ * tbl; TYPE_2__* last; int /*<<< orphan*/ * eqn; int /*<<< orphan*/  escape; scalar_t__ eqn_inline; TYPE_1__* last_eqn; } ;
struct buf {char* buf; } ;
typedef  enum roff_tok { ____Placeholder_roff_tok } roff_tok ;
struct TYPE_8__ {int /*<<< orphan*/  next; int /*<<< orphan*/ * last; } ;
struct TYPE_7__ {int (* text ) (struct roff*,int,struct buf*,int,int,int,int*) ;int (* sub ) (struct roff*,int,struct buf*,int,int,int,int*) ;int (* proc ) (struct roff*,int,struct buf*,int,int,int,int*) ;} ;
struct TYPE_6__ {int tok; } ;
struct TYPE_5__ {scalar_t__ delim; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_COMMENT_BAD ; 
 int /*<<< orphan*/  MANDOCERR_TBLMACRO ; 
 int ROFF_CONT ; 
 int ROFF_Dd ; 
 int ROFF_EQ ; 
 int ROFF_IGN ; 
 int ROFF_MASK ; 
 int /*<<< orphan*/  ROFF_NEXT_SIBLING ; 
 int ROFF_REPARSE ; 
 int ROFF_TH ; 
 int ROFF_TS ; 
 int ROFF_br ; 
 int ROFF_ce ; 
 int ROFF_rj ; 
 int ROFF_sp ; 
 int TOKEN_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct roff*,struct buf*,int) ; 
 int FUNC5 (struct roff*,struct buf*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct roff*,char*,int*) ; 
 int FUNC7 (struct roff*,char*,int*,int,int) ; 
 int FUNC8 (struct roff*,struct buf*,int,int*) ; 
 scalar_t__ roffce_lines ; 
 int /*<<< orphan*/ * roffce_node ; 
 TYPE_3__* roffs ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 int FUNC10 (struct roff*,int,struct buf*,int,int,int,int*) ; 
 int FUNC11 (struct roff*,int,struct buf*,int,int,int,int*) ; 
 int FUNC12 (struct roff*,int,struct buf*,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*,int) ; 

int
FUNC14(struct roff *r, int ln, struct buf *buf, int *offs)
{
	enum roff_tok	 t;
	int		 e;
	int		 pos;	/* parse point */
	int		 spos;	/* saved parse point for messages */
	int		 ppos;	/* original offset in buf->buf */
	int		 ctl;	/* macro line (boolean) */

	ppos = pos = *offs;

	/* Handle in-line equation delimiters. */

	if (r->tbl == NULL &&
	    r->last_eqn != NULL && r->last_eqn->delim &&
	    (r->eqn == NULL || r->eqn_inline)) {
		e = FUNC4(r, buf, pos);
		if (e == ROFF_REPARSE)
			return e;
		FUNC0(e == ROFF_CONT);
	}

	/* Expand some escape sequences. */

	e = FUNC5(r, buf, ln, pos, r->escape);
	if ((e & ROFF_MASK) == ROFF_IGN)
		return e;
	FUNC0(e == ROFF_CONT);

	ctl = FUNC6(r, buf->buf, &pos);

	/*
	 * First, if a scope is open and we're not a macro, pass the
	 * text through the macro's filter.
	 * Equations process all content themselves.
	 * Tables process almost all content themselves, but we want
	 * to warn about macros before passing it there.
	 */

	if (r->last != NULL && ! ctl) {
		t = r->last->tok;
		e = (*roffs[t].text)(r, t, buf, ln, pos, pos, offs);
		if ((e & ROFF_MASK) == ROFF_IGN)
			return e;
		e &= ~ROFF_MASK;
	} else
		e = ROFF_IGN;
	if (r->eqn != NULL && FUNC9(buf->buf + ppos, ".EN", 3)) {
		FUNC1(r->eqn, buf->buf + ppos);
		return e;
	}
	if (r->tbl != NULL && (ctl == 0 || buf->buf[pos] == '\0')) {
		FUNC13(r->tbl, ln, buf->buf, ppos);
		FUNC3(r->man, ln, r->tbl);
		return e;
	}
	if ( ! ctl)
		return FUNC8(r, buf, pos, offs) | e;

	/* Skip empty request lines. */

	if (buf->buf[pos] == '"') {
		FUNC2(MANDOCERR_COMMENT_BAD, ln, pos, NULL);
		return ROFF_IGN;
	} else if (buf->buf[pos] == '\0')
		return ROFF_IGN;

	/*
	 * If a scope is open, go to the child handler for that macro,
	 * as it may want to preprocess before doing anything with it.
	 * Don't do so if an equation is open.
	 */

	if (r->last) {
		t = r->last->tok;
		return (*roffs[t].sub)(r, t, buf, ln, ppos, pos, offs);
	}

	/* No scope is open.  This is a new request or macro. */

	spos = pos;
	t = FUNC7(r, buf->buf, &pos, ln, ppos);

	/* Tables ignore most macros. */

	if (r->tbl != NULL && (t == TOKEN_NONE || t == ROFF_TS ||
	    t == ROFF_br || t == ROFF_ce || t == ROFF_rj || t == ROFF_sp)) {
		FUNC2(MANDOCERR_TBLMACRO,
		    ln, pos, "%s", buf->buf + spos);
		if (t != TOKEN_NONE)
			return ROFF_IGN;
		while (buf->buf[pos] != '\0' && buf->buf[pos] != ' ')
			pos++;
		while (buf->buf[pos] == ' ')
			pos++;
		FUNC13(r->tbl, ln, buf->buf, pos);
		FUNC3(r->man, ln, r->tbl);
		return ROFF_IGN;
	}

	/* For now, let high level macros abort .ce mode. */

	if (ctl && roffce_node != NULL &&
	    (t == TOKEN_NONE || t == ROFF_Dd || t == ROFF_EQ ||
	     t == ROFF_TH || t == ROFF_TS)) {
		r->man->last = roffce_node;
		r->man->next = ROFF_NEXT_SIBLING;
		roffce_lines = 0;
		roffce_node = NULL;
	}

	/*
	 * This is neither a roff request nor a user-defined macro.
	 * Let the standard macro set parsers handle it.
	 */

	if (t == TOKEN_NONE)
		return ROFF_CONT;

	/* Execute a roff request or a user defined macro. */

	return (*roffs[t].proc)(r, t, buf, ln, spos, pos, offs);
}