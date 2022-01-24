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
struct thunder_pem_softc {int /*<<< orphan*/  id; } ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int PCI_RES_BUS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct thunder_pem_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,struct rman*) ; 
 struct rman* FUNC5 (struct thunder_pem_softc*,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, device_t child, int type,
    struct resource *res, rman_res_t start, rman_res_t end)
{
	struct thunder_pem_softc *sc;
	struct rman *rm;

	sc = FUNC1(dev);
#if defined(NEW_PCIB) && defined(PCI_RES_BUS)
	if (type == PCI_RES_BUS)
		return (pci_domain_adjust_bus(sc->id, child, res, start, end));
#endif

	rm = FUNC5(sc, type);
	if (rm == NULL)
		return (FUNC0(dev, child, type, res,
		    start, end));
	if (!FUNC4(res, rm))
		/*
		 * This means a child device has a memory or I/O
		 * resource not from you which shouldn't happen.
		 */
		return (EINVAL);
	return (FUNC3(res, start, end));
}