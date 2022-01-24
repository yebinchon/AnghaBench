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
typedef  int u_int ;
struct rman {int dummy; } ;
struct resource_list_entry {int start; int end; int count; } ;
struct resource {int dummy; } ;
struct nexus_device {int /*<<< orphan*/  nx_resources; } ;
typedef  int rman_res_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 struct nexus_device* FUNC0 (scalar_t__) ; 
 int RF_ACTIVE ; 
 scalar_t__ FUNC1 (int,int) ; 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 scalar_t__ FUNC2 (scalar_t__,int,int,struct resource*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct rman irq_rman ; 
 struct rman mem_rman ; 
 struct resource_list_entry* FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 struct resource* FUNC7 (struct rman*,int,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,int) ; 

__attribute__((used)) static struct resource *
FUNC10(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct nexus_device *ndev = FUNC0(child);
	struct resource *rv;
	struct resource_list_entry *rle;
	struct rman *rm;
	int needactivate = flags & RF_ACTIVE;

	/*
	 * If this is an allocation of the "default" range for a given
	 * RID, and we know what the resources for this device are
	 * (ie. they aren't maintained by a child bus), then work out
	 * the start/end values.
	 */
	if (FUNC1(start, end) && (count == 1)) {
		if (FUNC3(child) != bus || ndev == NULL)
			return(NULL);
		rle = FUNC4(&ndev->nx_resources, type, *rid);
		if (rle == NULL)
			return(NULL);
		start = rle->start;
		end = rle->end;
		count = rle->count;
	}

	switch (type) {
	case SYS_RES_IRQ:
		rm = &irq_rman;
		break;

	case SYS_RES_MEMORY:
	case SYS_RES_IOPORT:
		rm = &mem_rman;
		break;

	default:
		return (NULL);
	}

	rv = FUNC7(rm, start, end, count, flags, child);
	if (rv == NULL)
		return (NULL);

	FUNC9(rv, *rid);
	FUNC8(rv, FUNC5(rv));

	if (needactivate) {
		if (FUNC2(child, type, *rid, rv)) {
			FUNC6(rv);
			return (NULL);
		}
	}

	return (rv);
}