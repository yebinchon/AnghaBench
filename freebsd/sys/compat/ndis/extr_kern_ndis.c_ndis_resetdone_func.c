
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct ndis_softc {int ndis_dev; } ;
struct ifnet {int if_flags; } ;
typedef int ndis_status ;
struct TYPE_6__ {int nmb_resetevent; TYPE_1__* nmb_physdeviceobj; } ;
typedef TYPE_2__ ndis_miniport_block ;
typedef TYPE_2__* ndis_handle ;
struct TYPE_5__ {int do_devext; } ;


 int FALSE ;
 int IFF_DEBUG ;
 int IO_NO_INCREMENT ;
 int KeSetEvent (int *,int ,int ) ;
 struct ifnet* NDISUSB_GET_IFNET (struct ndis_softc*) ;
 struct ndis_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
ndis_resetdone_func(ndis_handle adapter, ndis_status status,
 uint8_t addressingreset)
{
 ndis_miniport_block *block;
 struct ndis_softc *sc;
 struct ifnet *ifp;

 block = adapter;
 sc = device_get_softc(block->nmb_physdeviceobj->do_devext);
 ifp = NDISUSB_GET_IFNET(sc);

 if (ifp && ifp->if_flags & IFF_DEBUG)
  device_printf(sc->ndis_dev, "reset done...\n");
 KeSetEvent(&block->nmb_resetevent, IO_NO_INCREMENT, FALSE);
}
