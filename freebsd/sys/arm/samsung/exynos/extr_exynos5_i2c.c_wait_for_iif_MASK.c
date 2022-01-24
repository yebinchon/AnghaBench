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
struct i2c_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I2CCON ; 
 int IIC_ETIMEOUT ; 
 int IIC_NOERR ; 
 int IPEND ; 
 int FUNC1 (struct i2c_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct i2c_softc *sc)
{
	int retry;
	int reg;

	retry = 1000;
	while (retry --) {
		reg = FUNC1(sc, I2CCON);
		if (reg & IPEND) {
			return (IIC_NOERR);
		}
		FUNC0(50);
	}

	return (IIC_ETIMEOUT);
}