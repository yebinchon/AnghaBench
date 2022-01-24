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
struct ti_spi_softc {int sc_fifolvl; int /*<<< orphan*/  sc_cs; scalar_t__ sc_read; scalar_t__ sc_len; struct spi_command* sc_cmd; } ;
struct spi_command {size_t rx_cmd_sz; scalar_t__ rx_data; scalar_t__ rx_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MCSPI_STAT_RXS ; 
 int FUNC3 (struct ti_spi_softc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC5(struct ti_spi_softc *sc)
{
	int bytes, timeout;
	struct spi_command *cmd;
	uint32_t read;
	uint8_t *data;

	cmd = sc->sc_cmd;
	bytes = FUNC4(sc->sc_len - sc->sc_read, sc->sc_fifolvl);
	while (bytes-- > 0) {
		data = (uint8_t *)cmd->rx_cmd;
		read = sc->sc_read++;
		if (read >= cmd->rx_cmd_sz) {
			data = (uint8_t *)cmd->rx_data;
			read -= cmd->rx_cmd_sz;
		}
		if (sc->sc_fifolvl == 1) {
			/* FIFO disabled. */
			timeout = 1000;
			while (--timeout > 0 && (FUNC3(sc,
			    FUNC2(sc->sc_cs)) & MCSPI_STAT_RXS) == 0) {
				FUNC0(100);
			}
			if (timeout == 0)
				return (-1);
		}
		data[read] = FUNC3(sc, FUNC1(sc->sc_cs));
	}

	return (0);
}