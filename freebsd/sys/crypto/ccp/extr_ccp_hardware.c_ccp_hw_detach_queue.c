
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_softc {int valid_queues; struct ccp_queue* queues; } ;
struct ccp_queue {int ring_desc_tag; int ring_desc_map; int desc_ring; int completions_ring; } ;
typedef int device_t ;


 int M_CCP ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 struct ccp_softc* device_get_softc (int ) ;
 int free (int ,int ) ;

__attribute__((used)) static void
ccp_hw_detach_queue(device_t dev, unsigned queue)
{
 struct ccp_softc *sc;
 struct ccp_queue *qp;

 sc = device_get_softc(dev);
 qp = &sc->queues[queue];





 if ((sc->valid_queues & (1 << queue)) == 0)
  return;

 free(qp->completions_ring, M_CCP);
 bus_dmamap_unload(qp->ring_desc_tag, qp->ring_desc_map);
 bus_dmamem_free(qp->ring_desc_tag, qp->desc_ring, qp->ring_desc_map);
 bus_dma_tag_destroy(qp->ring_desc_tag);
}
