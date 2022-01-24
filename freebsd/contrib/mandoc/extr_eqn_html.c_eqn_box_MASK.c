#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tag {int dummy; } ;
struct html {int dummy; } ;
struct eqn_box {scalar_t__ type; int expectargs; int pos; char* top; char* bottom; char* text; int font; char* left; char* right; struct eqn_box* next; struct eqn_box* first; TYPE_1__* parent; } ;
typedef  enum htmltag { ____Placeholder_htmltag } htmltag ;
typedef  enum eqn_fontt { ____Placeholder_eqn_fontt } eqn_fontt ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
#define  EQNFONT_BOLD 140 
#define  EQNFONT_FAT 139 
#define  EQNFONT_ITALIC 138 
#define  EQNFONT_NONE 137 
#define  EQNFONT_ROMAN 136 
#define  EQNPOS_FROM 135 
#define  EQNPOS_FROMTO 134 
#define  EQNPOS_OVER 133 
#define  EQNPOS_SQRT 132 
#define  EQNPOS_SUB 131 
#define  EQNPOS_SUBSUP 130 
#define  EQNPOS_SUP 129 
#define  EQNPOS_TO 128 
 scalar_t__ EQN_LIST ; 
 scalar_t__ EQN_MATRIX ; 
 scalar_t__ EQN_PILE ; 
 int /*<<< orphan*/  TAG_MFENCED ; 
 int TAG_MFRAC ; 
 int TAG_MI ; 
 int TAG_MN ; 
 int TAG_MO ; 
 int TAG_MOVER ; 
 int TAG_MROW ; 
 int TAG_MSQRT ; 
 int TAG_MSUB ; 
 int TAG_MSUBSUP ; 
 int TAG_MSUP ; 
 int TAG_MTABLE ; 
 int TAG_MTD ; 
 int TAG_MTR ; 
 int TAG_MUNDER ; 
 int TAG_MUNDEROVER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tag* FUNC6 (struct html*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct html*,struct tag*) ; 
 int /*<<< orphan*/  FUNC8 (struct html*,char*) ; 

__attribute__((used)) static void
FUNC9(struct html *p, const struct eqn_box *bp)
{
	struct tag	*post, *row, *cell, *t;
	const struct eqn_box *child, *parent;
	const char	*cp;
	size_t		 i, j, rows;
	enum htmltag	 tag;
	enum eqn_fontt	 font;

	if (NULL == bp)
		return;

	post = NULL;

	/*
	 * Special handling for a matrix, which is presented to us in
	 * column order, but must be printed in row-order.
	 */
	if (EQN_MATRIX == bp->type) {
		if (NULL == bp->first)
			goto out;
		if (bp->first->type != EQN_LIST ||
		    bp->first->expectargs == 1) {
			FUNC9(p, bp->first);
			goto out;
		}
		if (NULL == (parent = bp->first->first))
			goto out;
		/* Estimate the number of rows, first. */
		if (NULL == (child = parent->first))
			goto out;
		for (rows = 0; NULL != child; rows++)
			child = child->next;
		/* Print row-by-row. */
		post = FUNC6(p, TAG_MTABLE, "");
		for (i = 0; i < rows; i++) {
			parent = bp->first->first;
			row = FUNC6(p, TAG_MTR, "");
			while (NULL != parent) {
				child = parent->first;
				for (j = 0; j < i; j++) {
					if (NULL == child)
						break;
					child = child->next;
				}
				cell = FUNC6(p, TAG_MTD, "");
				/*
				 * If we have no data for this
				 * particular cell, then print a
				 * placeholder and continue--don't puke.
				 */
				if (NULL != child)
					FUNC9(p, child->first);
				FUNC7(p, cell);
				parent = parent->next;
			}
			FUNC7(p, row);
		}
		goto out;
	}

	switch (bp->pos) {
	case EQNPOS_TO:
		post = FUNC6(p, TAG_MOVER, "");
		break;
	case EQNPOS_SUP:
		post = FUNC6(p, TAG_MSUP, "");
		break;
	case EQNPOS_FROM:
		post = FUNC6(p, TAG_MUNDER, "");
		break;
	case EQNPOS_SUB:
		post = FUNC6(p, TAG_MSUB, "");
		break;
	case EQNPOS_OVER:
		post = FUNC6(p, TAG_MFRAC, "");
		break;
	case EQNPOS_FROMTO:
		post = FUNC6(p, TAG_MUNDEROVER, "");
		break;
	case EQNPOS_SUBSUP:
		post = FUNC6(p, TAG_MSUBSUP, "");
		break;
	case EQNPOS_SQRT:
		post = FUNC6(p, TAG_MSQRT, "");
		break;
	default:
		break;
	}

	if (bp->top || bp->bottom) {
		FUNC1(NULL == post);
		if (bp->top && NULL == bp->bottom)
			post = FUNC6(p, TAG_MOVER, "");
		else if (bp->top && bp->bottom)
			post = FUNC6(p, TAG_MUNDEROVER, "");
		else if (bp->bottom)
			post = FUNC6(p, TAG_MUNDER, "");
	}

	if (EQN_PILE == bp->type) {
		FUNC1(NULL == post);
		if (bp->first != NULL &&
		    bp->first->type == EQN_LIST &&
		    bp->first->expectargs > 1)
			post = FUNC6(p, TAG_MTABLE, "");
	} else if (bp->type == EQN_LIST && bp->expectargs > 1 &&
	    bp->parent && bp->parent->type == EQN_PILE) {
		FUNC1(NULL == post);
		post = FUNC6(p, TAG_MTR, "");
		FUNC6(p, TAG_MTD, "");
	}

	if (bp->text != NULL) {
		FUNC1(post == NULL);
		tag = TAG_MI;
		cp = bp->text;
		if (FUNC4((unsigned char)cp[0]) ||
		    (cp[0] == '.' && FUNC4((unsigned char)cp[1]))) {
			tag = TAG_MN;
			while (*++cp != '\0') {
				if (*cp != '.' &&
				    FUNC4((unsigned char)*cp) == 0) {
					tag = TAG_MI;
					break;
				}
			}
		} else if (*cp != '\0' && FUNC3((unsigned char)*cp) == 0) {
			tag = TAG_MO;
			while (*cp != '\0') {
				if (cp[0] == '\\' && cp[1] != '\0') {
					cp++;
					FUNC5(&cp, NULL, NULL);
				} else if (FUNC2((unsigned char)*cp)) {
					tag = TAG_MI;
					break;
				} else
					cp++;
			}
		}
		font = bp->font;
		if (bp->text[0] != '\0' &&
		    (((tag == TAG_MN || tag == TAG_MO) &&
		      font == EQNFONT_ROMAN) ||
		     (tag == TAG_MI && font == (bp->text[1] == '\0' ?
		      EQNFONT_ITALIC : EQNFONT_ROMAN))))
			font = EQNFONT_NONE;
		switch (font) {
		case EQNFONT_NONE:
			post = FUNC6(p, tag, "");
			break;
		case EQNFONT_ROMAN:
			post = FUNC6(p, tag, "?", "fontstyle", "normal");
			break;
		case EQNFONT_BOLD:
		case EQNFONT_FAT:
			post = FUNC6(p, tag, "?", "fontweight", "bold");
			break;
		case EQNFONT_ITALIC:
			post = FUNC6(p, tag, "?", "fontstyle", "italic");
			break;
		default:
			FUNC0();
		}
		FUNC8(p, bp->text);
	} else if (NULL == post) {
		if (NULL != bp->left || NULL != bp->right)
			post = FUNC6(p, TAG_MFENCED, "??",
			    "open", bp->left == NULL ? "" : bp->left,
			    "close", bp->right == NULL ? "" : bp->right);
		if (NULL == post)
			post = FUNC6(p, TAG_MROW, "");
		else
			FUNC6(p, TAG_MROW, "");
	}

	FUNC9(p, bp->first);

out:
	if (NULL != bp->bottom) {
		t = FUNC6(p, TAG_MO, "");
		FUNC8(p, bp->bottom);
		FUNC7(p, t);
	}
	if (NULL != bp->top) {
		t = FUNC6(p, TAG_MO, "");
		FUNC8(p, bp->top);
		FUNC7(p, t);
	}

	if (NULL != post)
		FUNC7(p, post);

	FUNC9(p, bp->next);
}