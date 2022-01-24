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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct sdhci_slot {int dummy; } ;
struct bcm_sdhci_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int bus_size_t ;

/* Variables and functions */
 int FUNC0 (struct bcm_sdhci_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_sdhci_softc*,int,int) ; 
 struct bcm_sdhci_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, struct sdhci_slot *slot, bus_size_t off, uint8_t val)
{
	struct bcm_sdhci_softc *sc = FUNC2(dev);
	uint32_t val32 = FUNC0(sc, off & ~3);
	val32 &= ~(0xff << (off & 3)*8);
	val32 |= (val << (off & 3)*8);
	FUNC1(sc, off & ~3, val32);
}