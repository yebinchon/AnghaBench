
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_mmc_softc {int dummy; } ;
typedef int device_t ;


 int AML_MMC_IRQ_STATUS_CLEAR_IRQ ;
 int AML_MMC_IRQ_STATUS_REG ;
 int CSR_WRITE_4 (struct aml8726_mmc_softc*,int ,int ) ;
 int aml8726_mmc_power_off (struct aml8726_mmc_softc*) ;
 int aml8726_mmc_soft_reset (struct aml8726_mmc_softc*,int) ;
 struct aml8726_mmc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_mmc_shutdown(device_t dev)
{
 struct aml8726_mmc_softc *sc = device_get_softc(dev);





 (void)aml8726_mmc_power_off(sc);
 aml8726_mmc_soft_reset(sc, 0);
 CSR_WRITE_4(sc, AML_MMC_IRQ_STATUS_REG, AML_MMC_IRQ_STATUS_CLEAR_IRQ);

 return (0);
}
