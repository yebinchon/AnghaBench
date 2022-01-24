#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource_list {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource_list* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC2 (struct resource_list*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct resource_list*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC5(device_t bus, device_t child, int type, int rid)
{
    struct resource_list *rl;

    rl = FUNC0(bus, child);
    if (FUNC2(rl, type, rid)) {
	FUNC1(bus, "delete_resource: Resource still owned by child"
	    " (type=%d, rid=%d)\n", type, rid);
	return;
    }
    FUNC4(rl, bus, child, type, rid);
    FUNC3(rl, type, rid);
}