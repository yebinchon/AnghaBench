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
typedef  int /*<<< orphan*/  u_int ;
struct resource_list_entry {int /*<<< orphan*/  count; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct resource {int dummy; } ;
struct gic_v3_acpi_devinfo {int /*<<< orphan*/  di_rl; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SYS_RES_MEMORY ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gic_v3_acpi_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 struct resource_list_entry* FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static struct resource *
FUNC4(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct gic_v3_acpi_devinfo *di;
	struct resource_list_entry *rle;

	/* We only allocate memory */
	if (type != SYS_RES_MEMORY)
		return (NULL);

	if (FUNC0(start, end)) {
		if ((di = FUNC2(child)) == NULL)
			return (NULL);

		/* Find defaults for this rid */
		rle = FUNC3(&di->di_rl, type, *rid);
		if (rle == NULL)
			return (NULL);

		start = rle->start;
		end = rle->end;
		count = rle->count;
	}

	return (FUNC1(bus, child, type, rid, start, end,
	    count, flags));
}