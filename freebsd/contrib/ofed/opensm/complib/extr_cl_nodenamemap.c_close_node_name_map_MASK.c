#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* name; int /*<<< orphan*/  guid; } ;
typedef  TYPE_1__ nn_map_t ;
typedef  TYPE_1__ name_map_item_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(nn_map_t * map)
{
	name_map_item_t *item = NULL;

	if (!map)
		return;

	item = (name_map_item_t *) FUNC1(map);
	while (item != (name_map_item_t *) FUNC0(map)) {
		item = (name_map_item_t *) FUNC2(map, item->guid);
		FUNC3(item->name);
		FUNC3(item);
		item = (name_map_item_t *) FUNC1(map);
	}
	FUNC3(map);
}