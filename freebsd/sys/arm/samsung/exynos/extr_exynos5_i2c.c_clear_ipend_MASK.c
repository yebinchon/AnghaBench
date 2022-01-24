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
 int /*<<< orphan*/  I2CCON ; 
 int IPEND ; 
 int FUNC0 (struct i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct i2c_softc *sc)
{
	int reg;

	reg = FUNC0(sc, I2CCON);
	reg &= ~(IPEND);
	FUNC1(sc, I2CCON, reg);

	return (0);
}