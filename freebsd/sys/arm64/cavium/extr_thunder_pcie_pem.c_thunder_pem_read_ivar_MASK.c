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
struct thunder_pem_softc {uintptr_t id; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int PCIB_IVAR_BUS ; 
 int PCIB_IVAR_DOMAIN ; 
 int /*<<< orphan*/  PCIERC_CFG006 ; 
 uintptr_t FUNC0 (int) ; 
 struct thunder_pem_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thunder_pem_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, int index,
    uintptr_t *result)
{
	struct thunder_pem_softc *sc;
	int secondary_bus = 0;

	sc = FUNC1(dev);

	if (index == PCIB_IVAR_BUS) {
		secondary_bus = FUNC2(sc, PCIERC_CFG006);
		*result = FUNC0(secondary_bus);
		return (0);
	}
	if (index == PCIB_IVAR_DOMAIN) {
		*result = sc->id;
		return (0);
	}

	return (ENOENT);
}