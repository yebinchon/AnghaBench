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
typedef  int uint32_t ;
struct rk_spi_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CS_MAX ; 
 int EINVAL ; 
 int FUNC0 (struct rk_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RK_SPI_SER ; 
 int /*<<< orphan*/  FUNC1 (struct rk_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int SPIBUS_CS_HIGH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(struct rk_spi_softc *sc, uint32_t cs, bool active)
{
	uint32_t reg;

	if (cs & SPIBUS_CS_HIGH) {
		FUNC2(sc->dev, "SPIBUS_CS_HIGH is not supported\n");
		return (EINVAL);
	}

	if (cs > CS_MAX)
		return (EINVAL);

	reg = FUNC0(sc, RK_SPI_SER);
	if (active)
		reg |= (1 << cs);
	else
		reg &= ~(1 << cs);
	FUNC1(sc, RK_SPI_SER, reg);

	return (0);
}