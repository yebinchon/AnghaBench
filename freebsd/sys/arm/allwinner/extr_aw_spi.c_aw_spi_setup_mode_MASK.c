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
struct aw_spi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AW_SPI_GCR ; 
 int AW_SPI_GCR_MODE_MASTER ; 
 int FUNC0 (struct aw_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AW_SPI_TCR ; 
 int AW_SPI_TCR_CPHA ; 
 int AW_SPI_TCR_CPOL ; 
 int /*<<< orphan*/  FUNC1 (struct aw_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int SPIBUS_MODE_CPHA ; 
 int SPIBUS_MODE_CPOL ; 

__attribute__((used)) static void
FUNC2(struct aw_spi_softc *sc, uint32_t mode)
{
	uint32_t reg;

	/* We only support master mode */
	reg = FUNC0(sc, AW_SPI_GCR);
	reg |= AW_SPI_GCR_MODE_MASTER;
	FUNC1(sc, AW_SPI_GCR, reg);

	/* Setup the modes */
	reg = FUNC0(sc, AW_SPI_TCR);
	if (mode & SPIBUS_MODE_CPHA)
		reg |= AW_SPI_TCR_CPHA;
	if (mode & SPIBUS_MODE_CPOL)
		reg |= AW_SPI_TCR_CPOL;

	FUNC1(sc, AW_SPI_TCR, reg);
}