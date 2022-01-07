
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aac_io_lock; int aac_dev; int aac_state; } ;
struct aac_fib {int * data; } ;
struct aac_close_command {int ContainerId; int Command; } ;
typedef int device_t ;


 int AAC_ACCESS_DEVREG (struct aac_softc*,int ) ;
 int AAC_DISABLE_INTERRUPT ;
 int AAC_STATE_SUSPEND ;
 int ContainerCommand ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int VM_CloseAll ;
 int aac_alloc_sync_fib (struct aac_softc*,struct aac_fib**) ;
 int aac_release_sync_fib (struct aac_softc*) ;
 scalar_t__ aac_sync_fib (struct aac_softc*,int ,int ,struct aac_fib*,int) ;
 int bzero (struct aac_close_command*,int) ;
 struct aac_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;

int
aacraid_shutdown(device_t dev)
{
 struct aac_softc *sc;
 struct aac_fib *fib;
 struct aac_close_command *cc;

 sc = device_get_softc(dev);
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 sc->aac_state |= AAC_STATE_SUSPEND;






 device_printf(sc->aac_dev, "shutting down controller...");

 mtx_lock(&sc->aac_io_lock);
 aac_alloc_sync_fib(sc, &fib);
 cc = (struct aac_close_command *)&fib->data[0];

 bzero(cc, sizeof(struct aac_close_command));
 cc->Command = VM_CloseAll;
 cc->ContainerId = 0xfffffffe;
 if (aac_sync_fib(sc, ContainerCommand, 0, fib,
     sizeof(struct aac_close_command)))
  printf("FAILED.\n");
 else
  printf("done\n");

 AAC_ACCESS_DEVREG(sc, AAC_DISABLE_INTERRUPT);
 aac_release_sync_fib(sc);
 mtx_unlock(&sc->aac_io_lock);

 return(0);
}
