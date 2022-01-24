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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RF_ACTIVE ; 
 scalar_t__ FUNC0 (int,struct resource*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int FUNC3 (struct resource*) ; 
 int FUNC4 (struct resource*) ; 

__attribute__((used)) static int
FUNC5(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
    int ret;

    /*
     * If this resource belongs to one of our internal managers,
     * deactivate it and release it to the local pool.
     */
    if (FUNC0(type, r)) {
	if (FUNC3(r) & RF_ACTIVE) {
	    ret = FUNC1(child, type, rid, r);
	    if (ret != 0)
		return (ret);
	}
	return (FUNC4(r));
    }

    return (FUNC2(bus, child, type, rid, r));
}