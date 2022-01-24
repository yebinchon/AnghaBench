#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tbl_row {int vert; TYPE_1__* last; } ;
struct tbl_node {struct tbl_row* first_row; } ;
typedef  enum tbl_cellt { ____Placeholder_tbl_cellt } tbl_cellt ;
struct TYPE_4__ {scalar_t__ name; int key; } ;
struct TYPE_3__ {scalar_t__ pos; } ;

/* Variables and functions */
 int KEYS_MAX ; 
 int /*<<< orphan*/  MANDOCERR_TBLLAYOUT_CHAR ; 
 int /*<<< orphan*/  MANDOCERR_TBLLAYOUT_DOWN ; 
 int /*<<< orphan*/  MANDOCERR_TBLLAYOUT_SPAN ; 
 int /*<<< orphan*/  MANDOCERR_TBLLAYOUT_VERT ; 
 scalar_t__ TBL_CELL_DHORIZ ; 
 int TBL_CELL_DOWN ; 
 scalar_t__ TBL_CELL_HORIZ ; 
 int TBL_CELL_SPAN ; 
 int /*<<< orphan*/  FUNC0 (struct tbl_node*,struct tbl_row*,int) ; 
 TYPE_2__* keys ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct tbl_node*,int /*<<< orphan*/ ,int,char const*,int*) ; 
 scalar_t__ FUNC3 (unsigned char) ; 

__attribute__((used)) static void
FUNC4(struct tbl_node *tbl, struct tbl_row *rp,
		int ln, const char *p, int *pos)
{
	int		 i;
	enum tbl_cellt	 c;

	/* Handle leading vertical lines */

	while (p[*pos] == ' ' || p[*pos] == '\t' || p[*pos] == '|') {
		if (p[*pos] == '|') {
			if (rp->vert < 2)
				rp->vert++;
			else
				FUNC1(MANDOCERR_TBLLAYOUT_VERT,
				    ln, *pos, NULL);
		}
		(*pos)++;
	}

again:
	while (p[*pos] == ' ' || p[*pos] == '\t')
		(*pos)++;

	if (p[*pos] == '.' || p[*pos] == '\0')
		return;

	/* Parse the column position (`c', `l', `r', ...). */

	for (i = 0; i < KEYS_MAX; i++)
		if (FUNC3((unsigned char)p[*pos]) == keys[i].name)
			break;

	if (i == KEYS_MAX) {
		FUNC1(MANDOCERR_TBLLAYOUT_CHAR,
		    ln, *pos, "%c", p[*pos]);
		(*pos)++;
		goto again;
	}
	c = keys[i].key;

	/* Special cases of spanners. */

	if (c == TBL_CELL_SPAN) {
		if (rp->last == NULL)
			FUNC1(MANDOCERR_TBLLAYOUT_SPAN, ln, *pos, NULL);
		else if (rp->last->pos == TBL_CELL_HORIZ ||
		    rp->last->pos == TBL_CELL_DHORIZ)
			c = rp->last->pos;
	} else if (c == TBL_CELL_DOWN && rp == tbl->first_row)
		FUNC1(MANDOCERR_TBLLAYOUT_DOWN, ln, *pos, NULL);

	(*pos)++;

	/* Allocate cell then parse its modifiers. */

	FUNC2(tbl, FUNC0(tbl, rp, c), ln, p, pos);
}