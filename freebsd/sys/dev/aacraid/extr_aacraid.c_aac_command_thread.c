
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_softc {int aifflags; int aac_dev; int aac_io_lock; TYPE_1__* aac_common; int aifthread; } ;
struct TYPE_2__ {scalar_t__* ac_printf; } ;


 int AAC_AIFFLAGS_ALLOCFIBS ;
 int AAC_AIFFLAGS_EXIT ;
 int AAC_AIFFLAGS_PENDING ;
 int AAC_AIFFLAGS_RUNNING ;
 int AAC_PERIODIC_INTERVAL ;
 int EWOULDBLOCK ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int PRIBIO ;
 int aac_alloc_commands (struct aac_softc*) ;
 int aac_kthread_exit (int ) ;
 int aac_print_printf (struct aac_softc*) ;
 int aac_timeout (struct aac_softc*) ;
 int aacraid_startio (struct aac_softc*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int hz ;
 int msleep (int ,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int ) ;

__attribute__((used)) static void
aac_command_thread(struct aac_softc *sc)
{
 int retval;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 mtx_lock(&sc->aac_io_lock);
 sc->aifflags = AAC_AIFFLAGS_RUNNING;

 while ((sc->aifflags & AAC_AIFFLAGS_EXIT) == 0) {

  retval = 0;
  if ((sc->aifflags & AAC_AIFFLAGS_PENDING) == 0)
   retval = msleep(sc->aifthread, &sc->aac_io_lock, PRIBIO,
     "aacraid_aifthd", AAC_PERIODIC_INTERVAL * hz);






  if ((sc->aifflags & AAC_AIFFLAGS_ALLOCFIBS) != 0) {
   aac_alloc_commands(sc);
   sc->aifflags &= ~AAC_AIFFLAGS_ALLOCFIBS;
   aacraid_startio(sc);
  }






  if (retval == EWOULDBLOCK)
   aac_timeout(sc);


  if (sc->aac_common->ac_printf[0] != 0)
   aac_print_printf(sc);
 }
 sc->aifflags &= ~AAC_AIFFLAGS_RUNNING;
 mtx_unlock(&sc->aac_io_lock);
 wakeup(sc->aac_dev);

 aac_kthread_exit(0);
}
