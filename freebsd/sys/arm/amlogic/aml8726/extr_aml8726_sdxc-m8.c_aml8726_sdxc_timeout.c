
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_sdxc_softc {int dummy; } ;


 int AML_SDXC_STATUS_BUSY ;
 int AML_SDXC_STATUS_REG ;
 int CSR_READ_4 (struct aml8726_sdxc_softc*,int ) ;
 int MMC_ERR_TIMEOUT ;
 int aml8726_sdxc_finish_command (struct aml8726_sdxc_softc*,int ) ;
 int aml8726_sdxc_soft_reset (struct aml8726_sdxc_softc*) ;
 int cpu_spinwait () ;

__attribute__((used)) static void
aml8726_sdxc_timeout(void *arg)
{
 struct aml8726_sdxc_softc *sc = (struct aml8726_sdxc_softc *)arg;





 aml8726_sdxc_soft_reset(sc);





 while ((CSR_READ_4(sc, AML_SDXC_STATUS_REG) &
     AML_SDXC_STATUS_BUSY) != 0)
  cpu_spinwait();

 aml8726_sdxc_finish_command(sc, MMC_ERR_TIMEOUT);
}
