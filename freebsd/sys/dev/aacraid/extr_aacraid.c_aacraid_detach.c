
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aifflags; int aac_io_lock; int eh; int aac_dev; int aifthread; int aac_sim_tqh; int aac_container_tqh; int timeout_id; int aac_daemontime; } ;
struct aac_sim {int sim_dev; } ;
struct aac_container {int sim_dev; } ;
typedef int device_t ;


 int AAC_AIFFLAGS_EXIT ;
 int AAC_AIFFLAGS_RUNNING ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int M_AACRAIDBUF ;
 int PCATCH ;
 int PUSER ;
 struct aac_sim* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct aac_sim*,int ) ;
 int aac_daemon ;
 int aacraid_free (struct aac_softc*) ;
 int aacraid_shutdown (int ) ;
 int callout_drain (int *) ;
 int co_link ;
 int device_delete_child (int ,int ) ;
 struct aac_softc* device_get_softc (int ) ;
 int free (struct aac_sim*,int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int hz ;
 int mtx_destroy (int *) ;
 int panic (char*) ;
 int shutdown_final ;
 int sim_link ;
 int tsleep (int ,int,char*,int) ;
 int untimeout (int ,void*,int ) ;
 int wakeup (int ) ;

int
aacraid_detach(device_t dev)
{
 struct aac_softc *sc;
 struct aac_container *co;
 struct aac_sim *sim;
 int error;

 sc = device_get_softc(dev);
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");




 untimeout(aac_daemon, (void *)sc, sc->timeout_id);


 while ((co = TAILQ_FIRST(&sc->aac_container_tqh)) != ((void*)0)) {
  TAILQ_REMOVE(&sc->aac_container_tqh, co, co_link);
  free(co, M_AACRAIDBUF);
 }


 while ((sim = TAILQ_FIRST(&sc->aac_sim_tqh)) != ((void*)0)) {
  TAILQ_REMOVE(&sc->aac_sim_tqh, sim, sim_link);
  error = device_delete_child(dev, sim->sim_dev);
  if (error)
   return (error);
  free(sim, M_AACRAIDBUF);
 }

 if (sc->aifflags & AAC_AIFFLAGS_RUNNING) {
  sc->aifflags |= AAC_AIFFLAGS_EXIT;
  wakeup(sc->aifthread);
  tsleep(sc->aac_dev, PUSER | PCATCH, "aac_dch", 30 * hz);
 }

 if (sc->aifflags & AAC_AIFFLAGS_RUNNING)
  panic("Cannot shutdown AIF thread");

 if ((error = aacraid_shutdown(dev)))
  return(error);

 EVENTHANDLER_DEREGISTER(shutdown_final, sc->eh);

 aacraid_free(sc);

 mtx_destroy(&sc->aac_io_lock);

 return(0);
}
