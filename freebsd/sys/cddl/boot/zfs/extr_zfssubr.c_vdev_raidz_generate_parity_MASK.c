#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int rm_firstdatacol; } ;
typedef  TYPE_1__ raidz_map_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(raidz_map_t *rm)
{
	switch (rm->rm_firstdatacol) {
	case 1:
		FUNC1(rm);
		break;
	case 2:
		FUNC2(rm);
		break;
	case 3:
		FUNC3(rm);
		break;
	default:
		FUNC0("invalid RAID-Z configuration");
	}
}