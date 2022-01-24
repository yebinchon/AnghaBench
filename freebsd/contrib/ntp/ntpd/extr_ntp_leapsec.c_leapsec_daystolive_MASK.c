#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vint64 ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_5__ {int /*<<< orphan*/  expire; } ;
struct TYPE_6__ {TYPE_1__ head; } ;
typedef  TYPE_2__ leap_table_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_7__ {int /*<<< orphan*/  hi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int32_t
FUNC4(
	uint32_t       when,
	const time_t * tpiv)
{
	const leap_table_t * pt;
	vint64 limit;

	pt = FUNC0(FALSE);
	limit = FUNC2(when, tpiv);
	limit = FUNC3(&pt->head.expire, &limit);
	return FUNC1(&limit).hi;
}