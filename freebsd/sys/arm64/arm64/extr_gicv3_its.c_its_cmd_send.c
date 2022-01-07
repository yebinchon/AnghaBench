
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct its_col {scalar_t__ col_target; } ;
struct TYPE_2__ {struct its_col* col; } ;
struct its_cmd_desc {TYPE_1__ cmd_desc_sync; int cmd_type; } ;
struct its_cmd {int dummy; } ;
struct gicv3_its_softc {int sc_its_cmd_next_idx; int sc_its_cmd_lock; struct its_cmd* sc_its_cmd_base; } ;
typedef int device_t ;


 int EBUSY ;
 int GITS_CWRITER ;
 int ITS_CMD_SYNC ;
 scalar_t__ ITS_TARGET_NONE ;
 struct gicv3_its_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int gic_its_write_8 (struct gicv3_its_softc*,int ,scalar_t__) ;
 struct its_cmd* its_cmd_alloc_locked (int ) ;
 scalar_t__ its_cmd_prepare (struct its_cmd*,struct its_cmd_desc*) ;
 int its_cmd_sync (struct gicv3_its_softc*,struct its_cmd*) ;
 int its_cmd_wait_completion (int ,struct its_cmd*,struct its_cmd*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static int
its_cmd_send(device_t dev, struct its_cmd_desc *desc)
{
 struct gicv3_its_softc *sc;
 struct its_cmd *cmd, *cmd_sync, *cmd_write;
 struct its_col col_sync;
 struct its_cmd_desc desc_sync;
 uint64_t target, cwriter;

 sc = device_get_softc(dev);
 mtx_lock_spin(&sc->sc_its_cmd_lock);
 cmd = its_cmd_alloc_locked(dev);
 if (cmd == ((void*)0)) {
  device_printf(dev, "could not allocate ITS command\n");
  mtx_unlock_spin(&sc->sc_its_cmd_lock);
  return (EBUSY);
 }

 target = its_cmd_prepare(cmd, desc);
 its_cmd_sync(sc, cmd);

 if (target != ITS_TARGET_NONE) {
  cmd_sync = its_cmd_alloc_locked(dev);
  if (cmd_sync != ((void*)0)) {
   desc_sync.cmd_type = ITS_CMD_SYNC;
   col_sync.col_target = target;
   desc_sync.cmd_desc_sync.col = &col_sync;
   its_cmd_prepare(cmd_sync, &desc_sync);
   its_cmd_sync(sc, cmd_sync);
  }
 }


 cwriter = sc->sc_its_cmd_next_idx * sizeof(struct its_cmd);
 gic_its_write_8(sc, GITS_CWRITER, cwriter);
 cmd_write = &sc->sc_its_cmd_base[sc->sc_its_cmd_next_idx];
 mtx_unlock_spin(&sc->sc_its_cmd_lock);

 its_cmd_wait_completion(dev, cmd, cmd_write);

 return (0);
}
