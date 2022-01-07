
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_iic_softc {int dummy; } ;
typedef int device_t ;


 int AML_I2C_CTRL_REG ;
 int AML_I2C_MANUAL_SDA_I ;
 int CSR_READ_4 (struct aml8726_iic_softc*,int ) ;
 struct aml8726_iic_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_iic_getsda(device_t dev)
{
 struct aml8726_iic_softc *sc = device_get_softc(dev);

 return (CSR_READ_4(sc, AML_I2C_CTRL_REG) & AML_I2C_MANUAL_SDA_I);
}
