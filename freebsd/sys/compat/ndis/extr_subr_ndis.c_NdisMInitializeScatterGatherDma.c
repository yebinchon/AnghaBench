
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ndis_softc {int ndis_sc; int ndis_ttag; int ndis_parent_tag; } ;
typedef int ndis_status ;
struct TYPE_4__ {TYPE_1__* nmb_physdeviceobj; } ;
typedef TYPE_2__ ndis_miniport_block ;
typedef int * ndis_handle ;
struct TYPE_3__ {int do_devext; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ETHER_ALIGN ;
 int MCLBYTES ;
 int NDIS_MAXSEG ;
 int NDIS_STATUS_FAILURE ;
 int NDIS_STATUS_SUCCESS ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 struct ndis_softc* device_get_softc (int ) ;

__attribute__((used)) static ndis_status
NdisMInitializeScatterGatherDma(ndis_handle adapter, uint8_t is64,
    uint32_t maxphysmap)
{
 struct ndis_softc *sc;
 ndis_miniport_block *block;
 int error;

 if (adapter == ((void*)0))
  return (NDIS_STATUS_FAILURE);
 block = (ndis_miniport_block *)adapter;
 sc = device_get_softc(block->nmb_physdeviceobj->do_devext);


 if (sc->ndis_sc == 1)
  return (NDIS_STATUS_SUCCESS);

 error = bus_dma_tag_create(sc->ndis_parent_tag, ETHER_ALIGN, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     MCLBYTES * NDIS_MAXSEG, NDIS_MAXSEG, MCLBYTES, BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0), &sc->ndis_ttag);

 sc->ndis_sc = 1;

 return (NDIS_STATUS_SUCCESS);
}
