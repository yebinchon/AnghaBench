
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_cmd {int dummy; } ;
struct gicv3_its_softc {size_t sc_its_cmd_next_idx; struct its_cmd* sc_its_cmd_base; int sc_its_cmd_lock; } ;
typedef int device_t ;


 int DELAY (int) ;
 int ITS_CMDQ_SIZE ;
 int MA_OWNED ;
 struct gicv3_its_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ its_cmd_queue_full (struct gicv3_its_softc*) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static struct its_cmd *
its_cmd_alloc_locked(device_t dev)
{
 struct gicv3_its_softc *sc;
 struct its_cmd *cmd;
 size_t us_left;

 sc = device_get_softc(dev);







 us_left = 1000000;

 mtx_assert(&sc->sc_its_cmd_lock, MA_OWNED);
 while (its_cmd_queue_full(sc)) {
  if (us_left-- == 0) {

   device_printf(dev,
       "Timeout while waiting for free command\n");
   return (((void*)0));
  }
  DELAY(1);
 }

 cmd = &sc->sc_its_cmd_base[sc->sc_its_cmd_next_idx];
 sc->sc_its_cmd_next_idx++;
 sc->sc_its_cmd_next_idx %= ITS_CMDQ_SIZE / sizeof(struct its_cmd);

 return (cmd);
}
