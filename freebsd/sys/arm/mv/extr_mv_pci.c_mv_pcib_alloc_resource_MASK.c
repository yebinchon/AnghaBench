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
struct resource {int dummy; } ;
struct mv_pcib_softc {int sc_mem_base; int sc_mem_size; int /*<<< orphan*/  ap_segment; struct rman sc_mem_rman; struct rman sc_io_rman; } ;
typedef  int rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int,int,int,int) ; 
#define  PCI_RES_BUS 130 
 int RF_ACTIVE ; 
 scalar_t__ FUNC1 (int,int) ; 
#define  SYS_RES_IOPORT 129 
#define  SYS_RES_MEMORY 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mv_pcib_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 struct resource* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 struct resource* FUNC7 (struct rman*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*,int) ; 

__attribute__((used)) static struct resource *
FUNC11(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct mv_pcib_softc *sc = FUNC4(dev);
	struct rman *rm = NULL;
	struct resource *res;

	switch (type) {
	case SYS_RES_IOPORT:
		rm = &sc->sc_io_rman;
		break;
	case SYS_RES_MEMORY:
		rm = &sc->sc_mem_rman;
		break;
#ifdef PCI_RES_BUS
	case PCI_RES_BUS:
		return (FUNC5(sc->ap_segment, child, rid, start,
		    end, count, flags));
#endif
	default:
		return (FUNC0(FUNC3(dev), dev,
		    type, rid, start, end, count, flags));
	}

	if (FUNC1(start, end)) {
		start = sc->sc_mem_base;
		end = sc->sc_mem_base + sc->sc_mem_size - 1;
		count = sc->sc_mem_size;
	}

	if ((start < sc->sc_mem_base) || (start + count - 1 != end) ||
	    (end > sc->sc_mem_base + sc->sc_mem_size - 1))
		return (NULL);

	res = FUNC7(rm, start, end, count, flags, child);
	if (res == NULL)
		return (NULL);

	FUNC10(res, *rid);
	FUNC9(res, fdtbus_bs_tag);
	FUNC8(res, start);

	if (flags & RF_ACTIVE)
		if (FUNC2(child, type, *rid, res)) {
			FUNC6(res);
			return (NULL);
		}

	return (res);
}