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
typedef  int /*<<< orphan*/  u_int ;
struct resource_list_entry {scalar_t__ start; scalar_t__ end; scalar_t__ count; } ;
struct resource {int dummy; } ;
struct mv_pcib_ctrl_softc {int nranges; TYPE_1__* ranges; } ;
struct mv_pcib_ctrl_devinfo {int /*<<< orphan*/  di_rl; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ bus; scalar_t__ size; scalar_t__ host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int SYS_RES_MEMORY ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct mv_pcib_ctrl_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 struct mv_pcib_ctrl_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 struct resource_list_entry* FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static struct resource *
FUNC6(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct mv_pcib_ctrl_devinfo *di;
	struct resource_list_entry *rle;
	struct mv_pcib_ctrl_softc *sc;
	int i;

	if (FUNC0(start, end)) {

		if ((di = FUNC2(child)) == NULL)
			return (NULL);
		if (type != SYS_RES_MEMORY)
			return (NULL);

		/* Find defaults for this rid */
		rle = FUNC5(&di->di_rl, type, *rid);

		if (rle == NULL)
			return (NULL);

		start = rle->start;
		end = rle->end;
		count = rle->count;
	}

	sc = FUNC3(bus);
	if (type == SYS_RES_MEMORY) {
		/* Remap through ranges property */
		for (i = 0; i < sc->nranges; i++) {
			if (start >= sc->ranges[i].bus && end <
			    sc->ranges[i].bus + sc->ranges[i].size) {
				start -= sc->ranges[i].bus;
				start += sc->ranges[i].host;
				end -= sc->ranges[i].bus;
				end += sc->ranges[i].host;
				break;
			}
		}

		if (i == sc->nranges && sc->nranges != 0) {
			FUNC4(bus, "Could not map resource "
			    "%#llx-%#llx\n", start, end);
			return (NULL);
		}
	}

	return (FUNC1(bus, child, type, rid, start, end,
	    count, flags));
}