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
typedef  size_t uint32_t ;
typedef  size_t uint16_t ;
struct iic_msg {int slave; int flags; size_t len; } ;
struct bcm_bsc_softc {int sc_flags; size_t sc_replen; size_t sc_totlen; int /*<<< orphan*/  sc_mtx; struct iic_msg* sc_curmsg; scalar_t__ sc_resid; } ;
typedef  struct bcm_bsc_softc* device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCM_BSC_CTRL ; 
 size_t BCM_BSC_CTRL_I2CEN ; 
 size_t BCM_BSC_CTRL_INT_ALL ; 
 size_t BCM_BSC_CTRL_READ ; 
 size_t BCM_BSC_CTRL_ST ; 
 int /*<<< orphan*/  BCM_BSC_DLEN ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_bsc_softc*) ; 
 size_t FUNC1 (struct bcm_bsc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BCM_BSC_SLAVE ; 
 int /*<<< orphan*/  BCM_BSC_STATUS ; 
 size_t BCM_BSC_STATUS_ERR ; 
 size_t BCM_BSC_STATUS_TA ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_bsc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_bsc_softc*,int /*<<< orphan*/ ,size_t) ; 
 int BCM_I2C_BUSY ; 
 int BCM_I2C_DONE ; 
 int BCM_I2C_ERROR ; 
 int BCM_I2C_READ ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_bsc_softc*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_bsc_softc*,int,char*,...) ; 
 int EIO ; 
 int IIC_M_RD ; 
 int IIC_M_WR ; 
 int /*<<< orphan*/  FUNC6 (struct bcm_bsc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_bsc_softc*) ; 
 struct bcm_bsc_softc* FUNC8 (struct bcm_bsc_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC9 (struct bcm_bsc_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bcm_bsc_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
	struct bcm_bsc_softc *sc;
	struct iic_msg *endmsgs, *nxtmsg;
	uint32_t readctl, status;
	int err;
	uint16_t curlen;
	uint8_t curisread, curslave, nxtisread, nxtslave;

	sc = FUNC8(dev);
	FUNC0(sc);

	/* If the controller is busy wait until it is available. */
	while (sc->sc_flags & BCM_I2C_BUSY)
		FUNC9(dev, &sc->sc_mtx, 0, "bscbusw", 0);

	/* Now we have control over the BSC controller. */
	sc->sc_flags = BCM_I2C_BUSY;

	FUNC5(sc, 3, "Transfer %d msgs\n", nmsgs);

	/* Clear the FIFO and the pending interrupts. */
	FUNC7(sc);

	/*
	 * Perform all the transfers requested in the array of msgs.  Note that
	 * it is bcm_bsc_empty_rx_fifo() and bcm_bsc_fill_tx_fifo() that advance
	 * sc->sc_curmsg through the array of messages, as the data from each
	 * message is fully consumed, but it is this loop that notices when we
	 * have no more messages to process.
	 */
	err = 0;
	sc->sc_resid = 0;
	sc->sc_curmsg = msgs;
	endmsgs = &msgs[nmsgs];
	while (sc->sc_curmsg < endmsgs) {
		readctl = 0;
		curslave = sc->sc_curmsg->slave >> 1;
		curisread = sc->sc_curmsg->flags & IIC_M_RD;
		sc->sc_replen = 0;
		sc->sc_totlen = sc->sc_curmsg->len;
		/*
		 * Scan for scatter/gather IO (same slave and direction) or
		 * repeat-start (read following write for the same slave).
		 */
		for (nxtmsg = sc->sc_curmsg + 1; nxtmsg < endmsgs; ++nxtmsg) {
			nxtslave = nxtmsg->slave >> 1;
			if (curslave == nxtslave) {
				nxtisread = nxtmsg->flags & IIC_M_RD;
				if (curisread == nxtisread) {
					/*
					 * Same slave and direction, this
					 * message will be part of the same
					 * transfer as the previous one.
					 */
					sc->sc_totlen += nxtmsg->len;
					continue;
				} else if (curisread == IIC_M_WR) {
					/*
					 * Read after write to same slave means
					 * repeat-start, remember how many bytes
					 * come before the repeat-start, switch
					 * the direction to IIC_M_RD, and gather
					 * up following reads to the same slave.
					 */
					curisread = IIC_M_RD;
					sc->sc_replen = sc->sc_totlen;
					sc->sc_totlen += nxtmsg->len;
					continue;
				}
			}
			break;
		}

		/*
		 * curslave and curisread temporaries from above may refer to
		 * the after-repstart msg, reset them to reflect sc_curmsg.
		 */
		curisread = (sc->sc_curmsg->flags & IIC_M_RD) ? 1 : 0;
		curslave = sc->sc_curmsg->slave | curisread;

		/* Write the slave address. */
		FUNC3(sc, BCM_BSC_SLAVE, curslave >> 1);

		FUNC5(sc, 2, "start  0x%02x\n", curslave);

		/*
		 * Either set up read length and direction variables for a
		 * simple transfer or get the hardware started on the first
		 * piece of a transfer that involves a repeat-start and set up
		 * the read length and direction vars for the second piece.
		 */
		if (sc->sc_replen == 0) {
			FUNC5(sc, 1, "%-6s 0x%02x len %d: ", 
			    (curisread) ? "read" : "write", curslave,
			    sc->sc_totlen);
			curlen = sc->sc_totlen;
			if (curisread) {
				readctl = BCM_BSC_CTRL_READ;
				sc->sc_flags |= BCM_I2C_READ;
			} else {
				readctl = 0;
				sc->sc_flags &= ~BCM_I2C_READ;
			}
		} else {
			FUNC5(sc, 1, "%-6s 0x%02x len %d: ", 
			    (curisread) ? "read" : "write", curslave,
			    sc->sc_replen);

			/*
			 * Start the write transfer with an empty fifo and wait
			 * for the 'transfer active' status bit to light up;
			 * that indicates that the hardware has latched the
			 * direction and length for the write, and we can safely
			 * reload those registers and issue the start for the
			 * following read; interrupts are not enabled here.
			 */
			FUNC3(sc, BCM_BSC_DLEN, sc->sc_replen);
			FUNC3(sc, BCM_BSC_CTRL, BCM_BSC_CTRL_I2CEN |
			    BCM_BSC_CTRL_ST);
			do {
				status = FUNC1(sc, BCM_BSC_STATUS);
				if (status & BCM_BSC_STATUS_ERR) {
					/* no ACK on slave addr */
					err = EIO;
					goto xfer_done;
				}
			} while ((status & BCM_BSC_STATUS_TA) == 0);
			/*
			 * Set curlen and readctl for the repeat-start read that
			 * we need to set up below, but set sc_flags to write,
			 * because that is the operation in progress right now.
			 */
			curlen = sc->sc_totlen - sc->sc_replen;
			readctl = BCM_BSC_CTRL_READ;
			sc->sc_flags &= ~BCM_I2C_READ;
		}

		/*
		 * Start the transfer with interrupts enabled, then if doing a
		 * write, fill the tx fifo.  Not prefilling the fifo until after
		 * this start command is the key workaround for making
		 * repeat-start work, and it's harmless to do it in this order
		 * for a regular write too.
		 */
		FUNC3(sc, BCM_BSC_DLEN, curlen);
		FUNC3(sc, BCM_BSC_CTRL, readctl | BCM_BSC_CTRL_I2CEN |
		    BCM_BSC_CTRL_ST | BCM_BSC_CTRL_INT_ALL);

		if (!(sc->sc_curmsg->flags & IIC_M_RD)) {
			FUNC6(sc);
		}

		/* Wait for the transaction to complete. */
		while (err == 0 && !(sc->sc_flags & BCM_I2C_DONE)) {
			err = FUNC9(sc, &sc->sc_mtx, 0, "bsciow", hz);
		}
		/* Check for errors. */
		if (err == 0 && (sc->sc_flags & BCM_I2C_ERROR))
			err = EIO;
xfer_done:
		FUNC4(sc, 1, " err=%d\n", err);
		FUNC5(sc, 2, "stop\n");
		if (err != 0)
			break;
	}

	/* Disable interrupts, clean fifo, etc. */
	FUNC7(sc);

	/* Clean the controller flags. */
	sc->sc_flags = 0;

	/* Wake up the threads waiting for bus. */
	FUNC10(dev);

	FUNC2(sc);

	return (err);
}