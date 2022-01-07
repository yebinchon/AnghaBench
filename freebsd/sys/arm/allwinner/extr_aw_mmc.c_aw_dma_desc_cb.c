
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct aw_mmc_softc {int aw_dma_map_err; int aw_dma_desc_phys; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void
aw_dma_desc_cb(void *arg, bus_dma_segment_t *segs, int nsegs, int err)
{
 struct aw_mmc_softc *sc;

 sc = (struct aw_mmc_softc *)arg;
 if (err) {
  sc->aw_dma_map_err = err;
  return;
 }
 sc->aw_dma_desc_phys = segs[0].ds_addr;
}
