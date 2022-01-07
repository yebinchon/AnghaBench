
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aac_ich; int aac_dev; int aac_state; int aac_io_lock; } ;
struct aac_mntinforesp {int MntRespCount; } ;
struct aac_fib {int dummy; } ;


 int AAC_MAX_CONTAINERS ;
 int AAC_STATE_SUSPEND ;
 int AAC_UNMASK_INTERRUPTS (struct aac_softc*) ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int aac_add_container (struct aac_softc*,struct aac_mntinforesp*,int ) ;
 int aac_alloc_sync_fib (struct aac_softc*,struct aac_fib**) ;
 struct aac_mntinforesp* aac_get_container_info (struct aac_softc*,struct aac_fib*,int) ;
 int aac_release_sync_fib (struct aac_softc*) ;
 scalar_t__ bus_generic_attach (int ) ;
 int config_intrhook_disestablish (int *) ;
 int device_printf (int ,char*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
aac_startup(void *arg)
{
 struct aac_softc *sc;
 struct aac_fib *fib;
 struct aac_mntinforesp *mir;
 int count = 0, i = 0;

 sc = (struct aac_softc *)arg;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 mtx_lock(&sc->aac_io_lock);
 aac_alloc_sync_fib(sc, &fib);


 do {
  if ((mir = aac_get_container_info(sc, fib, i)) == ((void*)0))
   continue;
  if (i == 0)
   count = mir->MntRespCount;
  aac_add_container(sc, mir, 0);
  i++;
 } while ((i < count) && (i < AAC_MAX_CONTAINERS));

 aac_release_sync_fib(sc);
 mtx_unlock(&sc->aac_io_lock);


 sc->aac_state &= ~AAC_STATE_SUSPEND;


 if (bus_generic_attach(sc->aac_dev))
  device_printf(sc->aac_dev, "bus_generic_attach failed\n");


 config_intrhook_disestablish(&sc->aac_ich);


 AAC_UNMASK_INTERRUPTS(sc);
}
