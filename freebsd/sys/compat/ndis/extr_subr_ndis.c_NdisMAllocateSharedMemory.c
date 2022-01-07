
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ndis_softc {int ndis_shlist; int ndis_parent_tag; } ;
struct TYPE_7__ {int np_quad; } ;
struct ndis_shmem {int ndis_list; void* ndis_saddr; TYPE_2__ ndis_paddr; int ndis_stag; int ndis_smap; } ;
struct TYPE_8__ {int np_quad; } ;
typedef TYPE_3__ ndis_physaddr ;
struct TYPE_9__ {TYPE_1__* nmb_physdeviceobj; } ;
typedef TYPE_4__ ndis_miniport_block ;
typedef int * ndis_handle ;
struct TYPE_6__ {int do_devext; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int InitializeListHead (int *) ;
 int InsertHeadList (int *,int *) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NDIS_BUS_SPACE_SHARED_MAXADDR ;
 int NDIS_LOCK (struct ndis_softc*) ;
 int NDIS_UNLOCK (struct ndis_softc*) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,void*,int ,int ,void*,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,void*,int ) ;
 struct ndis_softc* device_get_softc (int ) ;
 int free (struct ndis_shmem*,int ) ;
 struct ndis_shmem* malloc (int,int ,int) ;
 int ndis_mapshared_cb ;

__attribute__((used)) static void
NdisMAllocateSharedMemory(ndis_handle adapter, uint32_t len, uint8_t cached,
    void **vaddr, ndis_physaddr *paddr)
{
 ndis_miniport_block *block;
 struct ndis_softc *sc;
 struct ndis_shmem *sh;
 int error;

 if (adapter == ((void*)0))
  return;

 block = (ndis_miniport_block *)adapter;
 sc = device_get_softc(block->nmb_physdeviceobj->do_devext);

 sh = malloc(sizeof(struct ndis_shmem), M_DEVBUF, M_NOWAIT|M_ZERO);
 if (sh == ((void*)0))
  return;

 InitializeListHead(&sh->ndis_list);
 error = bus_dma_tag_create(sc->ndis_parent_tag, 64,
     0, NDIS_BUS_SPACE_SHARED_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0),
     ((void*)0), len, 1, len, BUS_DMA_ALLOCNOW, ((void*)0), ((void*)0),
     &sh->ndis_stag);

 if (error) {
  free(sh, M_DEVBUF);
  return;
 }

 error = bus_dmamem_alloc(sh->ndis_stag, vaddr,
     BUS_DMA_NOWAIT | BUS_DMA_ZERO, &sh->ndis_smap);

 if (error) {
  bus_dma_tag_destroy(sh->ndis_stag);
  free(sh, M_DEVBUF);
  return;
 }

 error = bus_dmamap_load(sh->ndis_stag, sh->ndis_smap, *vaddr,
     len, ndis_mapshared_cb, (void *)paddr, BUS_DMA_NOWAIT);

 if (error) {
  bus_dmamem_free(sh->ndis_stag, *vaddr, sh->ndis_smap);
  bus_dma_tag_destroy(sh->ndis_stag);
  free(sh, M_DEVBUF);
  return;
 }
 NDIS_LOCK(sc);
 sh->ndis_paddr.np_quad = paddr->np_quad;
 sh->ndis_saddr = *vaddr;
 InsertHeadList((&sc->ndis_shlist), (&sh->ndis_list));
 NDIS_UNLOCK(sc);
}
