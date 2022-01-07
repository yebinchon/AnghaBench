
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ti_pruss_softc {scalar_t__ sc_pdev; scalar_t__ sc_mem_res; int sc_mtx; TYPE_2__* sc_irq_devs; scalar_t__* sc_irq_res; scalar_t__* sc_intr; } ;
typedef int device_t ;
struct TYPE_3__ {int si_note; } ;
struct TYPE_4__ {int sc_mtx; TYPE_1__ sc_selinfo; } ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TI_PRUSS_HOST_IRQS ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int destroy_dev (scalar_t__) ;
 struct ti_pruss_softc* device_get_softc (int ) ;
 int knlist_clear (int *,int ) ;
 int knlist_destroy (int *) ;
 int knlist_empty (int *) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int) ;
 int rman_get_rid (scalar_t__) ;
 int ti_pruss_interrupts_clear (struct ti_pruss_softc*) ;
 int ti_pruss_interrupts_enable (struct ti_pruss_softc*,int,int) ;

__attribute__((used)) static int
ti_pruss_detach(device_t dev)
{
 struct ti_pruss_softc *sc = device_get_softc(dev);

 ti_pruss_interrupts_clear(sc);

 for (int i = 0; i < TI_PRUSS_HOST_IRQS; i++) {
  ti_pruss_interrupts_enable( sc, i, 0 );

  if (sc->sc_intr[i])
   bus_teardown_intr(dev, sc->sc_irq_res[i], sc->sc_intr[i]);
  if (sc->sc_irq_res[i])
   bus_release_resource(dev, SYS_RES_IRQ,
       rman_get_rid(sc->sc_irq_res[i]),
       sc->sc_irq_res[i]);
  knlist_clear(&sc->sc_irq_devs[i].sc_selinfo.si_note, 0);
  mtx_lock(&sc->sc_irq_devs[i].sc_mtx);
  if (!knlist_empty(&sc->sc_irq_devs[i].sc_selinfo.si_note))
   printf("IRQ %d KQueue not empty!\n", i );
  mtx_unlock(&sc->sc_irq_devs[i].sc_mtx);
  knlist_destroy(&sc->sc_irq_devs[i].sc_selinfo.si_note);
  mtx_destroy(&sc->sc_irq_devs[i].sc_mtx);
 }

 mtx_destroy(&sc->sc_mtx);
 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(sc->sc_mem_res),
      sc->sc_mem_res);
 if (sc->sc_pdev)
  destroy_dev(sc->sc_pdev);

 return (0);
}
