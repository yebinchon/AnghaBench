
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ndis_allocwork {int * na_iw; void* na_ctx; int na_len; int na_cached; } ;
typedef int ndis_status ;
struct TYPE_4__ {int nmb_deviceobj; } ;
typedef TYPE_1__ ndis_miniport_block ;
typedef TYPE_1__* ndis_handle ;
typedef scalar_t__ io_workitem_func ;
typedef int io_workitem ;
typedef int funcptr ;


 int * IoAllocateWorkItem (int ) ;
 int IoQueueWorkItem (int *,scalar_t__,int ,struct ndis_allocwork*) ;
 int M_NOWAIT ;
 int M_TEMP ;
 int NDIS_STATUS_FAILURE ;
 int NDIS_STATUS_PENDING ;
 int WORKQUEUE_DELAYED ;
 struct ndis_allocwork* malloc (int,int ,int ) ;
 scalar_t__ ndis_asyncmem_complete ;
 scalar_t__ ndis_findwrap (int ) ;

__attribute__((used)) static ndis_status
NdisMAllocateSharedMemoryAsync(ndis_handle adapter, uint32_t len,
    uint8_t cached, void *ctx)
{
 ndis_miniport_block *block;
 struct ndis_allocwork *w;
 io_workitem *iw;
 io_workitem_func ifw;

 if (adapter == ((void*)0))
  return (NDIS_STATUS_FAILURE);

 block = adapter;

 iw = IoAllocateWorkItem(block->nmb_deviceobj);
 if (iw == ((void*)0))
  return (NDIS_STATUS_FAILURE);

 w = malloc(sizeof(struct ndis_allocwork), M_TEMP, M_NOWAIT);

 if (w == ((void*)0))
  return (NDIS_STATUS_FAILURE);

 w->na_cached = cached;
 w->na_len = len;
 w->na_ctx = ctx;
 w->na_iw = iw;

 ifw = (io_workitem_func)ndis_findwrap((funcptr)ndis_asyncmem_complete);
 IoQueueWorkItem(iw, ifw, WORKQUEUE_DELAYED, w);

 return (NDIS_STATUS_PENDING);
}
