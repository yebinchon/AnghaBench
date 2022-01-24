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
typedef  int uint16_t ;
struct a10hdmi_softc {int dummy; } ;

/* Variables and functions */
 int COMMAND_EOREAD ; 
 int CTRL_DDC_ACMD_START ; 
 int CTRL_DDC_FIFO_DIR ; 
 int CTRL_DDC_FIFO_DIR_READ ; 
 int /*<<< orphan*/  DDC_BYTE_COUNTER ; 
 int /*<<< orphan*/  DDC_COMMAND ; 
 int /*<<< orphan*/  DDC_CTRL ; 
 int /*<<< orphan*/  DDC_DELAY ; 
 int /*<<< orphan*/  DDC_FIFO_CTRL ; 
 int /*<<< orphan*/  DDC_INT_STATUS ; 
 int DDC_RETRY ; 
 int /*<<< orphan*/  DDC_SLAVE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EDDC_ADDR ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int FIFO_CTRL_CLEAR ; 
 int FUNC1 (struct a10hdmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct a10hdmi_softc*,int /*<<< orphan*/ ,int) ; 
 int INT_STATUS_XFER_DONE ; 
 int SLAVE_ADDR_EDDC_SHIFT ; 
 int SLAVE_ADDR_OFFSET_SHIFT ; 
 int SLAVE_ADDR_SEG_SHIFT ; 
 int SLAVE_ADDR_SHIFT ; 

__attribute__((used)) static int
FUNC3(struct a10hdmi_softc *sc, uint16_t addr, uint8_t seg,
    uint8_t off, int len)
{
	uint32_t val;
	int retry;

	/* Set FIFO direction to read */
	val = FUNC1(sc, DDC_CTRL);
	val &= ~CTRL_DDC_FIFO_DIR;
	val |= CTRL_DDC_FIFO_DIR_READ;
	FUNC2(sc, DDC_CTRL, val);

	/* Setup DDC slave address */
	val = (addr << SLAVE_ADDR_SHIFT) | (seg << SLAVE_ADDR_SEG_SHIFT) |
	    (EDDC_ADDR << SLAVE_ADDR_EDDC_SHIFT) |
	    (off << SLAVE_ADDR_OFFSET_SHIFT);
	FUNC2(sc, DDC_SLAVE_ADDR, val);

	/* Clear FIFO */
	val = FUNC1(sc, DDC_FIFO_CTRL);
	val |= FIFO_CTRL_CLEAR;
	FUNC2(sc, DDC_FIFO_CTRL, val);

	/* Set transfer length */
	FUNC2(sc, DDC_BYTE_COUNTER, len);

	/* Set command to "Explicit Offset Address Read" */
	FUNC2(sc, DDC_COMMAND, COMMAND_EOREAD);

	/* Start transfer */
	val = FUNC1(sc, DDC_CTRL);
	val |= CTRL_DDC_ACMD_START;
	FUNC2(sc, DDC_CTRL, val);

	/* Wait for command to start */
	retry = DDC_RETRY;
	while (--retry > 0) {
		val = FUNC1(sc, DDC_CTRL);
		if ((val & CTRL_DDC_ACMD_START) == 0)
			break;
		FUNC0(DDC_DELAY);
	}
	if (retry == 0)
		return (ETIMEDOUT);

	/* Ensure that the transfer completed */
	val = FUNC1(sc, DDC_INT_STATUS);
	if ((val & INT_STATUS_XFER_DONE) == 0)
		return (EIO);

	return (0);
}