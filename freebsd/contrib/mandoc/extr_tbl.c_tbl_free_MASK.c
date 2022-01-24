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
struct tbl_span {struct tbl_span* next; struct tbl_span* string; struct tbl_span* first; struct tbl_span* first_span; struct tbl_span* wstr; struct tbl_span* first_row; } ;
struct tbl_row {struct tbl_row* next; struct tbl_row* string; struct tbl_row* first; struct tbl_row* first_span; struct tbl_row* wstr; struct tbl_row* first_row; } ;
struct tbl_node {struct tbl_node* next; struct tbl_node* string; struct tbl_node* first; struct tbl_node* first_span; struct tbl_node* wstr; struct tbl_node* first_row; } ;
struct tbl_dat {struct tbl_dat* next; struct tbl_dat* string; struct tbl_dat* first; struct tbl_dat* first_span; struct tbl_dat* wstr; struct tbl_dat* first_row; } ;
struct tbl_cell {struct tbl_cell* next; struct tbl_cell* string; struct tbl_cell* first; struct tbl_cell* first_span; struct tbl_cell* wstr; struct tbl_cell* first_row; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tbl_span*) ; 

void
FUNC1(struct tbl_node *tbl)
{
	struct tbl_node	*old_tbl;
	struct tbl_row	*rp;
	struct tbl_cell	*cp;
	struct tbl_span	*sp;
	struct tbl_dat	*dp;

	while (tbl != NULL) {
		while ((rp = tbl->first_row) != NULL) {
			tbl->first_row = rp->next;
			while (rp->first != NULL) {
				cp = rp->first;
				rp->first = cp->next;
				FUNC0(cp->wstr);
				FUNC0(cp);
			}
			FUNC0(rp);
		}
		while ((sp = tbl->first_span) != NULL) {
			tbl->first_span = sp->next;
			while (sp->first != NULL) {
				dp = sp->first;
				sp->first = dp->next;
				FUNC0(dp->string);
				FUNC0(dp);
			}
			FUNC0(sp);
		}
		old_tbl = tbl;
		tbl = tbl->next;
		FUNC0(old_tbl);
	}
}