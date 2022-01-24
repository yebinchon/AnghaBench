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
struct spi_command {int* tx_cmd; int* rx_cmd; int rx_cmd_sz; int tx_cmd_sz; } ;
struct ec_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  spi_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EC_CMD_VERSION0 ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_command*) ; 
 int /*<<< orphan*/  FUNC2 (struct ec_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct ec_softc* ec_sc ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_command*,int /*<<< orphan*/ ,int) ; 

int
FUNC9(uint8_t cmd, uint8_t *dout, uint8_t dout_len,
    uint8_t *dinp, uint8_t dinp_len)
{
	struct spi_command spi_cmd;
	struct ec_softc *sc;
	uint8_t *msg_dout;
	uint8_t *msg_dinp;
	int ret;
	int i;

	FUNC8(&spi_cmd, 0, sizeof(spi_cmd));

	msg_dout = FUNC7(dout_len + 4, M_DEVBUF, M_NOWAIT | M_ZERO);
	msg_dinp = FUNC7(dinp_len + 4, M_DEVBUF, M_NOWAIT | M_ZERO);

	spi_cmd.tx_cmd = msg_dout;
	spi_cmd.rx_cmd = msg_dinp;

	if (ec_sc == NULL)
		return (-1);

	sc = ec_sc;

	msg_dout[0] = EC_CMD_VERSION0;
	msg_dout[1] = cmd;
	msg_dout[2] = dout_len;

	for (i = 0; i < dout_len; i++) {
		msg_dout[i + 3] = dout[i];
	}

	FUNC5(msg_dout, dout_len + 3);

	FUNC2(sc, 1);
	spi_cmd.rx_cmd_sz = spi_cmd.tx_cmd_sz = dout_len + 4;
	ret = FUNC1(FUNC3(sc->dev), sc->dev, &spi_cmd);

	/* Wait 0xec */
	for (i = 0; i < 1000; i++) {
		FUNC0(10);
		msg_dout[0] = 0xff;
		spi_cmd.rx_cmd_sz = spi_cmd.tx_cmd_sz = 1;
		FUNC1(FUNC3(sc->dev), sc->dev, &spi_cmd);
		if (msg_dinp[0] == 0xec)
			break;
	}

	/* Get the rest */
	for (i = 0; i < (dout_len + 4); i++)
		msg_dout[i] = 0xff;
	spi_cmd.rx_cmd_sz = spi_cmd.tx_cmd_sz = dout_len + 4 - 1;
	ret = FUNC1(FUNC3(sc->dev), sc->dev, &spi_cmd);
	FUNC2(sc, 0);

	if (ret != 0) {
		FUNC4(sc->dev, "spibus_transfer returned %d\n", ret);
		FUNC6(msg_dout, M_DEVBUF);
		FUNC6(msg_dinp, M_DEVBUF);
		return (-1);
	}

	for (i = 0; i < dinp_len; i++) {
		dinp[i] = msg_dinp[i + 2];
	}

	FUNC6(msg_dout, M_DEVBUF);
	FUNC6(msg_dinp, M_DEVBUF);

	return (0);
}