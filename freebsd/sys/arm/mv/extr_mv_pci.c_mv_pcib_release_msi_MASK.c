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
struct mv_pcib_softc {int /*<<< orphan*/  sc_msi_mtx; int /*<<< orphan*/  sc_msi_bitmap; int /*<<< orphan*/  sc_msi_supported; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOTSUP ; 
 scalar_t__ MSI_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct mv_pcib_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child, int count, int *irqs)
{
	struct mv_pcib_softc *sc;
	u_int i;

	sc = FUNC1(dev);
	if(!sc->sc_msi_supported)
		return (ENOTSUP);

	FUNC2(&sc->sc_msi_mtx);

	for (i = 0; i < count; i++)
		FUNC0(&sc->sc_msi_bitmap, irqs[i] - MSI_IRQ);

	FUNC3(&sc->sc_msi_mtx);
	return (0);
}