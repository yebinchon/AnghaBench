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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct spi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_CFG ; 
 int /*<<< orphan*/  CS_REG ; 
 int NSSOUT ; 
 int /*<<< orphan*/  FUNC0 (struct spi_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct spi_softc*,int /*<<< orphan*/ ) ; 
 int RX_FIFO_LVL_M ; 
 int RX_FIFO_LVL_S ; 
 int /*<<< orphan*/  SPI_RX_DATA ; 
 int /*<<< orphan*/  SPI_STATUS ; 
 int /*<<< orphan*/  SPI_TX_DATA ; 
 int SW_RST ; 
 int TX_FIFO_LVL_M ; 
 int TX_FIFO_LVL_S ; 
 int /*<<< orphan*/  FUNC2 (struct spi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct spi_softc *sc, uint8_t *out_buf,
    uint8_t *in_buf, int bufsz, int cs)
{
	uint32_t reg;
	uint32_t i;

	if (bufsz == 0) {
		/* Nothing to transfer */
		return (0);
	}

	/* Reset registers */
	reg = FUNC1(sc, CH_CFG);
	reg |= SW_RST;
	FUNC3(sc, CH_CFG, reg);
	reg &= ~SW_RST;
	FUNC3(sc, CH_CFG, reg);

	/* Assert CS */
	reg = FUNC1(sc, CS_REG);
	reg &= ~NSSOUT;
	FUNC3(sc, CS_REG, reg);

	for (i = 0; i < bufsz; i++) {

		/* TODO: Implement FIFO operation */

		/* Wait all the data shifted out */
		while (FUNC1(sc, SPI_STATUS) & \
		    (TX_FIFO_LVL_M << TX_FIFO_LVL_S))
			continue;

		FUNC2(sc, SPI_TX_DATA, out_buf[i]);

		/* Wait until no data available */
		while ((FUNC1(sc, SPI_STATUS) & \
			(RX_FIFO_LVL_M << RX_FIFO_LVL_S)) == 0)
			continue;

		in_buf[i] = FUNC0(sc, SPI_RX_DATA);
	}

	/* Deassert CS */
	reg = FUNC1(sc, CS_REG);
	reg |= NSSOUT;
	FUNC3(sc, CS_REG, reg);

	return (0);
}