
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
struct ndis_softc {size_t ndis_mmapcnt; int ndis_mtag; int * ndis_mmaps; } ;
struct ndis_map_arg {size_t nma_cnt; int * nma_fraglist; } ;
typedef int ndis_paddr_unit ;
struct TYPE_4__ {TYPE_1__* nmb_physdeviceobj; } ;
typedef TYPE_2__ ndis_miniport_block ;
typedef int * ndis_handle ;
typedef int ndis_buffer ;
typedef int bus_dmamap_t ;
struct TYPE_3__ {int do_devext; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int MmGetMdlByteCount (int *) ;
 int MmGetMdlVirtualAddress (int *) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,void*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 struct ndis_softc* device_get_softc (int ) ;
 int ndis_map_cb ;

__attribute__((used)) static void
NdisMStartBufferPhysicalMapping(ndis_handle adapter, ndis_buffer *buf,
    uint32_t mapreg, uint8_t writedev, ndis_paddr_unit *addrarray,
    uint32_t *arraysize)
{
 ndis_miniport_block *block;
 struct ndis_softc *sc;
 struct ndis_map_arg nma;
 bus_dmamap_t map;
 int error;

 if (adapter == ((void*)0))
  return;

 block = (ndis_miniport_block *)adapter;
 sc = device_get_softc(block->nmb_physdeviceobj->do_devext);

 if (mapreg > sc->ndis_mmapcnt)
  return;

 map = sc->ndis_mmaps[mapreg];
 nma.nma_fraglist = addrarray;

 error = bus_dmamap_load(sc->ndis_mtag, map,
     MmGetMdlVirtualAddress(buf), MmGetMdlByteCount(buf), ndis_map_cb,
     (void *)&nma, BUS_DMA_NOWAIT);

 if (error)
  return;

 bus_dmamap_sync(sc->ndis_mtag, map,
     writedev ? BUS_DMASYNC_PREWRITE : BUS_DMASYNC_PREREAD);

 *arraysize = nma.nma_cnt;
}
