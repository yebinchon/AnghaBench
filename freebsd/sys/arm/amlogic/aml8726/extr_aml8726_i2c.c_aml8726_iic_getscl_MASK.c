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
struct aml8726_iic_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AML_I2C_CTRL_REG ; 
 int AML_I2C_MANUAL_SCL_I ; 
 int FUNC0 (struct aml8726_iic_softc*,int /*<<< orphan*/ ) ; 
 struct aml8726_iic_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct aml8726_iic_softc *sc = FUNC1(dev);

	return (FUNC0(sc, AML_I2C_CTRL_REG) & AML_I2C_MANUAL_SCL_I);
}