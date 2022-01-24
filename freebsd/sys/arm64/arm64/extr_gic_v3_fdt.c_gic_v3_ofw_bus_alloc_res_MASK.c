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
struct gic_v3_ofw_devinfo {int /*<<< orphan*/  di_rl; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gic_v3_ofw_devinfo* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct resource_list_entry* FUNC7 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static struct resource *
FUNC8(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct gic_v3_ofw_devinfo *di;
	struct resource_list_entry *rle;
	int ranges_len;

	if (FUNC1(start, end)) {
		if ((di = FUNC3(child)) == NULL)
			return (NULL);
		if (type != SYS_RES_MEMORY)
			return (NULL);

		/* Find defaults for this rid */
		rle = FUNC7(&di->di_rl, type, *rid);
		if (rle == NULL)
			return (NULL);

		start = rle->start;
		end = rle->end;
		count = rle->count;
	}
	/*
	 * XXX: No ranges remap!
	 *	Absolute address is expected.
	 */
	if (FUNC6(bus, "ranges")) {
		ranges_len = FUNC0(FUNC5(bus), "ranges");
		if (ranges_len != 0) {
			if (bootverbose) {
				FUNC4(child,
				    "Ranges remap not supported\n");
			}
			return (NULL);
		}
	}
	return (FUNC2(bus, child, type, rid, start, end,
	    count, flags));
}