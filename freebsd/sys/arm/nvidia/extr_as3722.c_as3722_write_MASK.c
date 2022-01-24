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
struct iic_msg {int member_2; int /*<<< orphan*/  slave; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct as3722_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus_addr; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IIC_M_WR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct iic_msg*,int) ; 

int
FUNC2(struct as3722_softc *sc, uint8_t reg, uint8_t val)
{
	uint8_t data[2];
	int rv;

	struct iic_msg msgs[1] = {
		{0, IIC_M_WR, 2, data},
	};

	msgs[0].slave = sc->bus_addr;
	data[0] = reg;
	data[1] = val;

	rv = FUNC1(sc->dev, msgs, 1);
	if (rv != 0) {
		FUNC0(sc->dev,
		    "Error when writing reg 0x%02X, rv: %d\n", reg, rv);
		return (EIO);
	}
	return (0);
}