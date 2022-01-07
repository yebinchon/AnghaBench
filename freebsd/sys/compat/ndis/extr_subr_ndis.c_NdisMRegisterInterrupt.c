
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct ndis_softc {int dummy; } ;
struct mtx {int dummy; } ;
typedef int ndis_status ;
struct TYPE_11__ {int ni_introbj; int ni_dpc; int ni_dpcevt; int ni_dpcfunc; int ni_isrfunc; scalar_t__ ni_dpccnt; void* ni_shared; void* ni_isrreq; void* ni_block; int * ni_rsvd; } ;
typedef TYPE_3__ ndis_miniport_interrupt ;
struct TYPE_12__ {int nmc_interrupt_func; int nmc_isr_func; } ;
typedef TYPE_4__ ndis_miniport_characteristics ;
struct TYPE_13__ {TYPE_3__* nmb_interrupt; TYPE_2__* nmb_deviceobj; TYPE_1__* nmb_physdeviceobj; } ;
typedef TYPE_5__ ndis_miniport_block ;
typedef int ndis_interrupt_mode ;
typedef void* ndis_handle ;
typedef int funcptr ;
struct TYPE_10__ {int do_drvobj; } ;
struct TYPE_9__ {int do_devext; } ;


 int EVENT_TYPE_NOTIFY ;
 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int FALSE ;
 int IoConnectInterrupt (int *,int ,struct ndis_softc*,int *,int ,int ,int ,int ,void*,int ,int ) ;
 TYPE_4__* IoGetDriverObjectExtension (int ,void*) ;
 int KDPC_IMPORTANCE_LOW ;
 int KeInitializeDpc (int *,int ,TYPE_3__*) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int KeSetImportanceDpc (int *,int ) ;
 int NDIS_STATUS_FAILURE ;
 int NDIS_STATUS_RESOURCES ;
 int NDIS_STATUS_SUCCESS ;
 int NonPagedPool ;
 int STATUS_SUCCESS ;
 int TRUE ;
 struct ndis_softc* device_get_softc (int ) ;
 int ndis_findwrap (int ) ;
 scalar_t__ ndis_intr ;
 scalar_t__ ndis_intrhand ;

__attribute__((used)) static ndis_status
NdisMRegisterInterrupt(ndis_miniport_interrupt *intr, ndis_handle adapter,
    uint32_t ivec, uint32_t ilevel, uint8_t reqisr, uint8_t shared,
    ndis_interrupt_mode imode)
{
 ndis_miniport_block *block;
 ndis_miniport_characteristics *ch;
 struct ndis_softc *sc;
 int error;

 block = adapter;
 sc = device_get_softc(block->nmb_physdeviceobj->do_devext);
 ch = IoGetDriverObjectExtension(block->nmb_deviceobj->do_drvobj,
     (void *)1);

 intr->ni_rsvd = ExAllocatePoolWithTag(NonPagedPool,
     sizeof(struct mtx), 0);
 if (intr->ni_rsvd == ((void*)0))
  return (NDIS_STATUS_RESOURCES);

 intr->ni_block = adapter;
 intr->ni_isrreq = reqisr;
 intr->ni_shared = shared;
 intr->ni_dpccnt = 0;
 intr->ni_isrfunc = ch->nmc_isr_func;
 intr->ni_dpcfunc = ch->nmc_interrupt_func;

 KeInitializeEvent(&intr->ni_dpcevt, EVENT_TYPE_NOTIFY, TRUE);
 KeInitializeDpc(&intr->ni_dpc,
     ndis_findwrap((funcptr)ndis_intrhand), intr);
 KeSetImportanceDpc(&intr->ni_dpc, KDPC_IMPORTANCE_LOW);

 error = IoConnectInterrupt(&intr->ni_introbj,
     ndis_findwrap((funcptr)ndis_intr), sc, ((void*)0),
     ivec, ilevel, 0, imode, shared, 0, FALSE);

 if (error != STATUS_SUCCESS)
  return (NDIS_STATUS_FAILURE);

 block->nmb_interrupt = intr;

 return (NDIS_STATUS_SUCCESS);
}
