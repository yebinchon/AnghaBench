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
struct TYPE_2__ {int intval; int uintval; int /*<<< orphan*/  ulongval; } ;
struct module_stat {int version; int id; char* name; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  stat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct module_stat*,int) ; 
 scalar_t__ FUNC1 (int,struct module_stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 scalar_t__ showdata ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void
FUNC4(int modid)
{
    struct module_stat stat;

    FUNC0(&stat, sizeof(stat));
    stat.version = sizeof(struct module_stat);
    if (FUNC1(modid, &stat) < 0)
	FUNC3("can't stat module id %d", modid);
    else
	if (showdata) {
	    FUNC2("\t\t%3d %s (%d, %u, 0x%lx)\n", stat.id, stat.name, 
	        stat.data.intval, stat.data.uintval, stat.data.ulongval);
	} else {
		FUNC2("\t\t%3d %s\n", stat.id, stat.name);
	}
}