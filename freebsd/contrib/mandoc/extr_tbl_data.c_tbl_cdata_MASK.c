#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const tab; } ;
struct tbl_node {void* part; TYPE_3__* last_span; TYPE_1__ opts; } ;
struct tbl_dat {int block; char const* string; TYPE_2__* layout; int /*<<< orphan*/  pos; } ;
struct TYPE_6__ {struct tbl_dat* last; } ;
struct TYPE_5__ {scalar_t__ pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_TBLDATA_SPAN ; 
 scalar_t__ TBL_CELL_DOWN ; 
 int /*<<< orphan*/  TBL_DATA_DATA ; 
 void* TBL_PART_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct tbl_node*,TYPE_3__*,int,char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char*,char const*) ; 
 char const* FUNC2 (char const*,size_t) ; 
 char const* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,size_t) ; 
 int FUNC5 (char const*) ; 

void
FUNC6(struct tbl_node *tbl, int ln, const char *p, int pos)
{
	struct tbl_dat	*dat;
	size_t		 sz;

	dat = tbl->last_span->last;

	if (p[pos] == 'T' && p[pos + 1] == '}') {
		pos += 2;
		if (p[pos] == tbl->opts.tab) {
			tbl->part = TBL_PART_DATA;
			pos++;
			while (p[pos] != '\0')
				FUNC0(tbl, tbl->last_span, ln, p, &pos);
			return;
		} else if (p[pos] == '\0') {
			tbl->part = TBL_PART_DATA;
			return;
		}

		/* Fallthrough: T} is part of a word. */
	}

	dat->pos = TBL_DATA_DATA;
	dat->block = 1;

	if (dat->string != NULL) {
		sz = FUNC5(p + pos) + FUNC5(dat->string) + 2;
		dat->string = FUNC2(dat->string, sz);
		(void)FUNC4(dat->string, " ", sz);
		(void)FUNC4(dat->string, p + pos, sz);
	} else
		dat->string = FUNC3(p + pos);

	if (dat->layout->pos == TBL_CELL_DOWN)
		FUNC1(MANDOCERR_TBLDATA_SPAN,
		    ln, pos, "%s", dat->string);
}