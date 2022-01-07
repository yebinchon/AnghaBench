
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_softc {int aac_io_lock; int * cam_rescan_cb; } ;
struct aac_cam {int sim; int path; TYPE_1__* inf; } ;
typedef int device_t ;
struct TYPE_2__ {int * aac_cam; struct aac_softc* aac_sc; } ;


 int AC_LOST_DEVICE ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int TRUE ;
 int cam_sim_free (int ,int ) ;
 int cam_sim_path (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_async (int ,int ,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;

__attribute__((used)) static int
aac_cam_detach(device_t dev)
{
 struct aac_softc *sc;
 struct aac_cam *camsc;

 camsc = (struct aac_cam *)device_get_softc(dev);
 if (!camsc->inf)
  return (0);
 sc = camsc->inf->aac_sc;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 camsc->inf->aac_cam = ((void*)0);

 mtx_lock(&sc->aac_io_lock);

 xpt_async(AC_LOST_DEVICE, camsc->path, ((void*)0));
 xpt_free_path(camsc->path);
 xpt_bus_deregister(cam_sim_path(camsc->sim));
 cam_sim_free(camsc->sim, TRUE);

 sc->cam_rescan_cb = ((void*)0);

 mtx_unlock(&sc->aac_io_lock);

 return (0);
}
