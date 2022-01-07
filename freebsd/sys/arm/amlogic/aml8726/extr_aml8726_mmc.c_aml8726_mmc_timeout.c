
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_mmc_softc {int dummy; } ;


 int AML_MMC_IRQ_STATUS_CMD_BUSY ;
 int AML_MMC_IRQ_STATUS_REG ;
 int CSR_READ_4 (struct aml8726_mmc_softc*,int ) ;
 int MMC_ERR_TIMEOUT ;
 int aml8726_mmc_finish_command (struct aml8726_mmc_softc*,int ) ;
 int aml8726_mmc_soft_reset (struct aml8726_mmc_softc*,int) ;
 int cpu_spinwait () ;

__attribute__((used)) static void
aml8726_mmc_timeout(void *arg)
{
 struct aml8726_mmc_softc *sc = (struct aml8726_mmc_softc *)arg;





 aml8726_mmc_soft_reset(sc, 0);





 while ((CSR_READ_4(sc, AML_MMC_IRQ_STATUS_REG) &
     AML_MMC_IRQ_STATUS_CMD_BUSY) != 0)
  cpu_spinwait();

 aml8726_mmc_finish_command(sc, MMC_ERR_TIMEOUT);
}
