
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ time; scalar_t__ error; } ;
struct aml8726_sdxc_softc {TYPE_1__ busy; int ch; } ;


 scalar_t__ AML_SDXC_BUSY_POLL_INTVL ;
 scalar_t__ AML_SDXC_BUSY_TIMEOUT ;
 int AML_SDXC_STATUS_DAT0 ;
 int AML_SDXC_STATUS_REG ;
 int AML_SDXC_UNLOCK (struct aml8726_sdxc_softc*) ;
 int CSR_READ_4 (struct aml8726_sdxc_softc*,int ) ;
 scalar_t__ MMC_ERR_NONE ;
 scalar_t__ MMC_ERR_TIMEOUT ;
 int aml8726_sdxc_finish_command (struct aml8726_sdxc_softc*,scalar_t__) ;
 int callout_reset (int *,int ,void (*) (void*),struct aml8726_sdxc_softc*) ;
 int msecs_to_ticks (scalar_t__) ;

__attribute__((used)) static void
aml8726_sdxc_busy_check(void *arg)
{
 struct aml8726_sdxc_softc *sc = (struct aml8726_sdxc_softc *)arg;
 uint32_t sr;

 sc->busy.time += AML_SDXC_BUSY_POLL_INTVL;

 sr = CSR_READ_4(sc, AML_SDXC_STATUS_REG);

 if ((sr & AML_SDXC_STATUS_DAT0) == 0) {
  if (sc->busy.time < AML_SDXC_BUSY_TIMEOUT) {
   callout_reset(&sc->ch,
       msecs_to_ticks(AML_SDXC_BUSY_POLL_INTVL),
       aml8726_sdxc_busy_check, sc);
   AML_SDXC_UNLOCK(sc);
   return;
  }
  if (sc->busy.error == MMC_ERR_NONE)
   sc->busy.error = MMC_ERR_TIMEOUT;
 }

 aml8726_sdxc_finish_command(sc, sc->busy.error);
}
