
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {int (* done ) (struct mmc_request*) ;TYPE_1__* cmd; } ;
struct aml8726_sdxc_softc {int * cmd; } ;
typedef int device_t ;
struct TYPE_2__ {int error; } ;


 int AML_SDXC_LOCK (struct aml8726_sdxc_softc*) ;
 int AML_SDXC_UNLOCK (struct aml8726_sdxc_softc*) ;
 int EBUSY ;
 int MMC_ERR_NONE ;
 int aml8726_sdxc_start_command (struct aml8726_sdxc_softc*,TYPE_1__*) ;
 struct aml8726_sdxc_softc* device_get_softc (int ) ;
 int stub1 (struct mmc_request*) ;

__attribute__((used)) static int
aml8726_sdxc_request(device_t bus, device_t child, struct mmc_request *req)
{
 struct aml8726_sdxc_softc *sc = device_get_softc(bus);
 int mmc_error;

 AML_SDXC_LOCK(sc);

 if (sc->cmd != ((void*)0)) {
  AML_SDXC_UNLOCK(sc);
  return (EBUSY);
 }

 mmc_error = aml8726_sdxc_start_command(sc, req->cmd);

 AML_SDXC_UNLOCK(sc);


 if (mmc_error != MMC_ERR_NONE) {
  req->cmd->error = mmc_error;
  req->done(req);
 }

 return (0);
}
