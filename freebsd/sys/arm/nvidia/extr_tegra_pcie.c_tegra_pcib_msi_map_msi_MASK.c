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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct tegra_pcib_softc {int /*<<< orphan*/  msi_page; } ;
struct tegra_pcib_irqsrc {int /*<<< orphan*/  irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct tegra_pcib_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, device_t child, struct intr_irqsrc *isrc,
    uint64_t *addr, uint32_t *data)
{
	struct tegra_pcib_softc *sc = FUNC0(dev);
	struct tegra_pcib_irqsrc *ti = (struct tegra_pcib_irqsrc *)isrc;

	*addr = FUNC1(sc->msi_page);
	*data = ti->irq;
	return (0);
}