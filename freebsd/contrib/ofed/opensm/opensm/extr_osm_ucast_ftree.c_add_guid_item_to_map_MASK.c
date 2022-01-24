#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  item; int /*<<< orphan*/  guid; } ;
typedef  TYPE_1__ name_map_item_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(void *cxt, uint64_t guid, char *p)
{
	cl_qmap_t *map = cxt;
	name_map_item_t *item;
	name_map_item_t *inserted_item;

	item = FUNC2(sizeof(*item));
	if (!item)
		return -1;

	item->guid = guid;
	inserted_item = (name_map_item_t *) FUNC0(map, guid, &item->item);
	if (inserted_item != item)
                FUNC1(item);

	return 0;
}