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
struct lzx_stream {TYPE_1__* ds; } ;
struct TYPE_2__ {int /*<<< orphan*/  lt; int /*<<< orphan*/  mt; int /*<<< orphan*/  pt; int /*<<< orphan*/  at; struct TYPE_2__* pos_tbl; struct TYPE_2__* w_buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct lzx_stream *strm)
{

	if (strm->ds == NULL)
		return;
	FUNC0(strm->ds->w_buff);
	FUNC0(strm->ds->pos_tbl);
	FUNC1(&(strm->ds->at));
	FUNC1(&(strm->ds->pt));
	FUNC1(&(strm->ds->mt));
	FUNC1(&(strm->ds->lt));
	FUNC0(strm->ds);
	strm->ds = NULL;
}