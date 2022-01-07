
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct aac_softc {int flags; int timeout_id; int aac_io_lock; int aac_daemontime; int aac_state; int aac_dev; int aac_sim_tqh; int * eh; int aifthread; TYPE_1__* aac_dev_t; int aac_ev_cmfree; int aac_container_tqh; int msi_tupelo; int msi_enabled; int hint_flags; } ;
struct aac_mntinforesp {int MntRespCount; } ;
struct aac_fib {int dummy; } ;
struct TYPE_2__ {struct aac_softc* si_drv1; } ;


 int AAC_ACCESS_DEVREG (struct aac_softc*,int ) ;
 int AAC_ENABLE_INTERRUPT ;
 int AAC_FLAGS_ENABLE_CAM ;
 int AAC_FLAGS_SYNC_MODE ;
 int AAC_MAX_CONTAINERS ;
 int AAC_STATE_SUSPEND ;
 int * EVENTHANDLER_REGISTER (int ,int ,int ,int ) ;
 int FALSE ;
 int GID_OPERATOR ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int MTX_DEF ;
 int SHUTDOWN_PRI_DEFAULT ;
 int TAILQ_INIT (int *) ;
 int UID_ROOT ;
 int aac_add_container (struct aac_softc*,struct aac_mntinforesp*,int ,int ) ;
 int aac_alloc (struct aac_softc*) ;
 int aac_alloc_sync_fib (struct aac_softc*,struct aac_fib**) ;
 int aac_check_firmware (struct aac_softc*) ;
 scalar_t__ aac_command_thread ;
 int aac_container_bus (struct aac_softc*) ;
 int aac_daemon ;
 int aac_define_int_mode (struct aac_softc*) ;
 int aac_describe_controller (struct aac_softc*) ;
 int aac_get_bus_info (struct aac_softc*) ;
 scalar_t__ aac_get_container_info (struct aac_softc*,struct aac_fib*,int,struct aac_mntinforesp*,int *) ;
 int aac_init (struct aac_softc*) ;
 int aac_initq_busy (struct aac_softc*) ;
 int aac_initq_free (struct aac_softc*) ;
 int aac_initq_ready (struct aac_softc*) ;
 scalar_t__ aac_kthread_create (void (*) (void*),struct aac_softc*,int *,int ,int ,char*,int) ;
 int aac_release_sync_fib (struct aac_softc*) ;
 int aac_setup_intr (struct aac_softc*) ;
 int aacraid_cdevsw ;
 int aacraid_shutdown ;
 int bus_generic_attach (int ) ;
 int callout_init_mtx (int *,int *,int ) ;
 int callout_reset (int *,int,int ,struct aac_softc*) ;
 int device_get_flags (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int hz ;
 TYPE_1__* make_dev (int *,int,int ,int ,int,char*,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 int shutdown_final ;
 int timeout (int ,void*,int ) ;
 int tvtohz (struct timeval*) ;

int
aacraid_attach(struct aac_softc *sc)
{
 int error, unit;
 struct aac_fib *fib;
 struct aac_mntinforesp mir;
 int count = 0, i = 0;
 u_int32_t uid;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 sc->hint_flags = device_get_flags(sc->aac_dev);



 aac_initq_free(sc);
 aac_initq_ready(sc);
 aac_initq_busy(sc);


 sc->aac_state |= AAC_STATE_SUSPEND;




 sc->msi_enabled = sc->msi_tupelo = FALSE;
 if ((error = aac_check_firmware(sc)) != 0)
  return(error);




 mtx_init(&sc->aac_io_lock, "AACRAID I/O lock", ((void*)0), MTX_DEF);
 TAILQ_INIT(&sc->aac_container_tqh);
 TAILQ_INIT(&sc->aac_ev_cmfree);
 if ((error = aac_alloc(sc)) != 0)
  return(error);
 aac_define_int_mode(sc);
 if (!(sc->flags & AAC_FLAGS_SYNC_MODE)) {
  if ((error = aac_init(sc)) != 0)
   return(error);
 }




 if ((error = aac_setup_intr(sc)) != 0)
  return(error);




 aac_describe_controller(sc);




 unit = device_get_unit(sc->aac_dev);
 sc->aac_dev_t = make_dev(&aacraid_cdevsw, unit, UID_ROOT, GID_OPERATOR,
     0640, "aacraid%d", unit);
 sc->aac_dev_t->si_drv1 = sc;


 if (aac_kthread_create((void(*)(void *))aac_command_thread, sc,
     &sc->aifthread, 0, 0, "aacraid%daif", unit))
  panic("Could not create AIF thread");


 if ((sc->eh = EVENTHANDLER_REGISTER(shutdown_final, aacraid_shutdown,
     sc->aac_dev, SHUTDOWN_PRI_DEFAULT)) == ((void*)0))
  device_printf(sc->aac_dev,
         "shutdown event registration failed\n");


 mtx_lock(&sc->aac_io_lock);
 aac_alloc_sync_fib(sc, &fib);

 do {
  if ((aac_get_container_info(sc, fib, i, &mir, &uid)) != 0)
   continue;
  if (i == 0)
   count = mir.MntRespCount;
  aac_add_container(sc, &mir, 0, uid);
  i++;
 } while ((i < count) && (i < AAC_MAX_CONTAINERS));
 aac_release_sync_fib(sc);
 mtx_unlock(&sc->aac_io_lock);


 TAILQ_INIT(&sc->aac_sim_tqh);
 aac_container_bus(sc);

 if ((sc->flags & AAC_FLAGS_ENABLE_CAM) != 0)
  aac_get_bus_info(sc);


 bus_generic_attach(sc->aac_dev);


 sc->aac_state &= ~AAC_STATE_SUSPEND;


 AAC_ACCESS_DEVREG(sc, AAC_ENABLE_INTERRUPT);






 {
  struct timeval tv;
  tv.tv_sec = 60;
  tv.tv_usec = 0;
  sc->timeout_id = timeout(aac_daemon, (void *)sc, tvtohz(&tv));
 }


 return(0);
}
