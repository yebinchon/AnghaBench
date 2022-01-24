#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  item; } ;
typedef  TYPE_1__ name_map_item_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(cl_qmap_t * guid_tbl)
{
	name_map_item_t *p_guid = NULL, *p_next_guid = NULL;

	p_next_guid = (name_map_item_t *) FUNC1(guid_tbl);
	while (p_next_guid != (name_map_item_t *) FUNC0(guid_tbl)) {
		p_guid = p_next_guid;
		p_next_guid = (name_map_item_t *) FUNC2(&p_guid->item);
		FUNC4(p_guid);
	}
	FUNC3(guid_tbl);
}