
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bcm_sdhci_softc {int dmamap_status; int dmamap_seg_count; int * dmamap_seg_sizes; int * dmamap_seg_addrs; } ;
struct TYPE_3__ {int ds_len; int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void
bcm_sdhci_dmacb(void *arg, bus_dma_segment_t *segs, int nseg, int err)
{
 struct bcm_sdhci_softc *sc = arg;
 int i;

 sc->dmamap_status = err;
 sc->dmamap_seg_count = nseg;


 for (i = 0; i < nseg; i++) {
  sc->dmamap_seg_addrs[i] = segs[i].ds_addr;
  sc->dmamap_seg_sizes[i] = segs[i].ds_len;
 }
}
