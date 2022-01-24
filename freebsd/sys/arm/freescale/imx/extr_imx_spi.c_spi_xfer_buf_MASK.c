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
typedef  void* uint32_t ;
struct spi_softc {int debug; scalar_t__ rxlen; scalar_t__ rxidx; scalar_t__ txlen; scalar_t__ txidx; int intreg; int /*<<< orphan*/  mtx; void* txbuf; void* rxbuf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECSPI_INTREG ; 
 int EIO ; 
 int INTREG_RDREN ; 
 int INTREG_TDREN ; 
 int /*<<< orphan*/  FUNC0 (struct spi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void*,void*,void*) ; 
 int hz ; 
 int FUNC2 (struct spi_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_softc*) ; 

__attribute__((used)) static int
FUNC4(struct spi_softc *sc, void *rxbuf, void *txbuf, uint32_t len)
{
	int err;

	if (sc->debug >= 1) {
		FUNC1(sc->dev,
		    "spi_xfer_buf, rxbuf %p txbuf %p len %u\n",
		    rxbuf, txbuf, len);
	}

	if (len == 0)
		return (0);

	sc->rxbuf = rxbuf;
	sc->rxlen = len;
	sc->rxidx = 0;
	sc->txbuf = txbuf;
	sc->txlen = len;
	sc->txidx = 0;
	sc->intreg = INTREG_RDREN | INTREG_TDREN;
	FUNC3(sc);

	/* Enable interrupts last; spi_fill_txfifo() can change sc->intreg */
	FUNC0(sc, ECSPI_INTREG, sc->intreg);

	err = 0;
	while (err == 0 && sc->intreg != 0)
		err = FUNC2(sc, &sc->mtx, 0, "imxspi", 10 * hz);

	if (sc->rxidx != sc->rxlen || sc->txidx != sc->txlen)
		err = EIO;

	return (err);
}