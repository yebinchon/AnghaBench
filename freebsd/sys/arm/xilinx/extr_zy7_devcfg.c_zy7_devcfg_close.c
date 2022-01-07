
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zy7_devcfg_softc {int dma_tag; scalar_t__ is_open; } ;
struct thread {int dummy; } ;
struct cdev {struct zy7_devcfg_softc* si_drv1; } ;


 int DEVCFG_SC_LOCK (struct zy7_devcfg_softc*) ;
 int DEVCFG_SC_UNLOCK (struct zy7_devcfg_softc*) ;
 int bus_dma_tag_destroy (int ) ;
 int zy7_en_level_shifters ;
 int zy7_slcr_postload_pl (int ) ;

__attribute__((used)) static int
zy7_devcfg_close(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
 struct zy7_devcfg_softc *sc = dev->si_drv1;

 DEVCFG_SC_LOCK(sc);
 sc->is_open = 0;
 bus_dma_tag_destroy(sc->dma_tag);
 DEVCFG_SC_UNLOCK(sc);

 zy7_slcr_postload_pl(zy7_en_level_shifters);

 return (0);
}
