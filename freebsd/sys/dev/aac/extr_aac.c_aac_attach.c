
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct aac_softc* ich_arg; int ich_func; } ;
struct TYPE_5__ {int buildNumber; } ;
struct aac_softc {int flags; int aac_io_lock; int aac_daemontime; int aac_sim_tqh; int aac_dev; int * eh; int aifthread; TYPE_2__* aac_dev_t; TYPE_4__ aac_ich; TYPE_1__ aac_revision; int aac_ev_cmfree; int aac_container_tqh; int aac_container_lock; int aac_aifq_lock; int aac_state; int aac_task_complete; } ;
struct TYPE_6__ {struct aac_softc* si_drv1; } ;


 int AAC_FLAGS_ENABLE_CAM ;
 int AAC_STATE_SUSPEND ;
 int CTLFLAG_RD ;
 int ENXIO ;
 int * EVENTHANDLER_REGISTER (int ,int ,int ,int ) ;
 int GID_OPERATOR ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int MTX_DEF ;
 int OID_AUTO ;
 int SHUTDOWN_PRI_DEFAULT ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int TAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,struct aac_softc*) ;
 int UID_ROOT ;
 int aac_alloc (struct aac_softc*) ;
 int aac_cdevsw ;
 int aac_check_firmware (struct aac_softc*) ;
 scalar_t__ aac_command_thread ;
 int aac_complete ;
 int aac_daemon ;
 int aac_describe_controller (struct aac_softc*) ;
 int aac_get_bus_info (struct aac_softc*) ;
 int aac_init (struct aac_softc*) ;
 int aac_initq_bio (struct aac_softc*) ;
 int aac_initq_busy (struct aac_softc*) ;
 int aac_initq_free (struct aac_softc*) ;
 int aac_initq_ready (struct aac_softc*) ;
 int aac_setup_intr (struct aac_softc*) ;
 int aac_shutdown ;
 int aac_startup ;
 int callout_init_mtx (int *,int *,int ) ;
 int callout_reset (int *,int,int ,struct aac_softc*) ;
 scalar_t__ config_intrhook_establish (TYPE_4__*) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int hz ;
 scalar_t__ kproc_create (void (*) (void*),struct aac_softc*,int *,int ,int ,char*,int) ;
 TYPE_2__* make_dev (int *,int,int ,int ,int,char*,int) ;
 int make_dev_alias (TYPE_2__*,char*,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 int shutdown_final ;

int
aac_attach(struct aac_softc *sc)
{
 int error, unit;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");




 aac_initq_free(sc);
 aac_initq_ready(sc);
 aac_initq_busy(sc);
 aac_initq_bio(sc);




 TASK_INIT(&sc->aac_task_complete, 0, aac_complete, sc);


 sc->aac_state |= AAC_STATE_SUSPEND;




 if ((error = aac_check_firmware(sc)) != 0)
  return(error);




 mtx_init(&sc->aac_aifq_lock, "AAC AIF lock", ((void*)0), MTX_DEF);
 mtx_init(&sc->aac_io_lock, "AAC I/O lock", ((void*)0), MTX_DEF);
 mtx_init(&sc->aac_container_lock, "AAC container lock", ((void*)0), MTX_DEF);
 TAILQ_INIT(&sc->aac_container_tqh);
 TAILQ_INIT(&sc->aac_ev_cmfree);


 callout_init_mtx(&sc->aac_daemontime, &sc->aac_io_lock, 0);




 if ((error = aac_alloc(sc)) != 0)
  return(error);
 if ((error = aac_init(sc)) != 0)
  return(error);




 if ((error = aac_setup_intr(sc)) != 0)
  return(error);




 aac_describe_controller(sc);




 SYSCTL_ADD_INT(device_get_sysctl_ctx(sc->aac_dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(sc->aac_dev)),
     OID_AUTO, "firmware_build", CTLFLAG_RD,
     &sc->aac_revision.buildNumber, 0,
     "firmware build number");




 sc->aac_ich.ich_func = aac_startup;
 sc->aac_ich.ich_arg = sc;
 if (config_intrhook_establish(&sc->aac_ich) != 0) {
  device_printf(sc->aac_dev,
         "can't establish configuration hook\n");
  return(ENXIO);
 }




 unit = device_get_unit(sc->aac_dev);
 sc->aac_dev_t = make_dev(&aac_cdevsw, unit, UID_ROOT, GID_OPERATOR,
     0640, "aac%d", unit);
 (void)make_dev_alias(sc->aac_dev_t, "afa%d", unit);
 (void)make_dev_alias(sc->aac_dev_t, "hpn%d", unit);
 sc->aac_dev_t->si_drv1 = sc;


 if (kproc_create((void(*)(void *))aac_command_thread, sc,
     &sc->aifthread, 0, 0, "aac%daif", unit))
  panic("Could not create AIF thread");


 if ((sc->eh = EVENTHANDLER_REGISTER(shutdown_final, aac_shutdown,
     sc->aac_dev, SHUTDOWN_PRI_DEFAULT)) == ((void*)0))
  device_printf(sc->aac_dev,
         "shutdown event registration failed\n");


 if ((sc->flags & AAC_FLAGS_ENABLE_CAM) != 0) {
  TAILQ_INIT(&sc->aac_sim_tqh);
  aac_get_bus_info(sc);
 }

 mtx_lock(&sc->aac_io_lock);
 callout_reset(&sc->aac_daemontime, 60 * hz, aac_daemon, sc);
 mtx_unlock(&sc->aac_io_lock);

 return(0);
}
