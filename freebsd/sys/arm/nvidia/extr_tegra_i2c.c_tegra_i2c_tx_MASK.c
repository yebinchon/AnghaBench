#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct tegra_i2c_softc {size_t msg_idx; TYPE_1__* msg; } ;
struct TYPE_2__ {size_t len; int* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_FIFO_STATUS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  I2C_TX_PACKET_FIFO ; 
 int FUNC1 (struct tegra_i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct tegra_i2c_softc *sc)
{
	uint32_t reg;
	int cnt, i;

	if (sc->msg_idx >= sc->msg->len)
		FUNC4("Invalid call to tegra_i2c_tx\n");

	while(sc->msg_idx < sc->msg->len) {
		reg = FUNC1(sc, I2C_FIFO_STATUS);
		if (FUNC0(reg) == 0)
			break;
		cnt = FUNC3(4, sc->msg->len - sc->msg_idx);
		reg = 0;
		for (i = 0;  i < cnt; i++) {
			reg |=  sc->msg->buf[sc->msg_idx] << (i * 8);
			sc->msg_idx++;
		}
		FUNC2(sc, I2C_TX_PACKET_FIFO, reg);
	}
	if (sc->msg_idx >= sc->msg->len)
		return (0);
	return (sc->msg->len - sc->msg_idx - 1);
}