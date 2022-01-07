
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_sdxc_softc {int dummy; } ;
typedef int device_t ;


 int AML_SDXC_IRQ_ENABLE_REG ;
 int CSR_WRITE_4 (struct aml8726_sdxc_softc*,int ,int ) ;
 int aml8726_sdxc_power_off (struct aml8726_sdxc_softc*) ;
 int aml8726_sdxc_soft_reset (struct aml8726_sdxc_softc*) ;
 struct aml8726_sdxc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_sdxc_shutdown(device_t dev)
{
 struct aml8726_sdxc_softc *sc = device_get_softc(dev);





 aml8726_sdxc_power_off(sc);
 aml8726_sdxc_soft_reset(sc);
 CSR_WRITE_4(sc, AML_SDXC_IRQ_ENABLE_REG, 0);

 return (0);
}
