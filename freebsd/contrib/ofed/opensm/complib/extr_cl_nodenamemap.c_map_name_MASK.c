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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  guid; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ name_map_item_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(void *cxt, uint64_t guid, char *p)
{
	cl_qmap_t *map = cxt;
	name_map_item_t *item;

	p = FUNC3(p, "\"#");
	if (!p)
		return 0;

	item = FUNC1(sizeof(*item));
	if (!item)
		return -1;
	item->guid = guid;
	item->name = FUNC2(p);
	FUNC0(map, item->guid, (cl_map_item_t *) item);
	return 0;
}