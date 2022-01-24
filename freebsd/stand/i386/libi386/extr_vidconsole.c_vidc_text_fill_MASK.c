#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  teken_unit_t ;
struct TYPE_8__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_7__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_9__ {TYPE_2__ tr_end; TYPE_1__ tr_begin; } ;
typedef  TYPE_3__ teken_rect_t ;
struct TYPE_10__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
typedef  TYPE_4__ teken_pos_t ;
typedef  int /*<<< orphan*/  teken_char_t ;
typedef  int /*<<< orphan*/  teken_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(void *s, const teken_rect_t *r, teken_char_t c,
    const teken_attr_t *a)
{
	teken_pos_t p;
	teken_unit_t row, col;

	FUNC0(&row, &col);
	FUNC2(row, col, false);
	for (p.tp_row = r->tr_begin.tp_row; p.tp_row < r->tr_end.tp_row;
	    p.tp_row++)
		for (p.tp_col = r->tr_begin.tp_col;
		    p.tp_col < r->tr_end.tp_col; p.tp_col++)
			FUNC1(s, &p, c, a);
	FUNC2(row, col, true);
}