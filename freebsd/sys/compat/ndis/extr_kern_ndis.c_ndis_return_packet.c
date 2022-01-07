
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ndis_softc {TYPE_2__* ndis_block; } ;
struct TYPE_6__ {int np_list; scalar_t__ np_softc; scalar_t__ np_refcnt; } ;
typedef TYPE_1__ ndis_packet ;
struct TYPE_7__ {int nmb_returnitem; int nmb_returnlock; int nmb_returnlist; } ;
typedef TYPE_2__ ndis_miniport_block ;
typedef int io_workitem_func ;
struct TYPE_8__ {scalar_t__ ipt_wrap; } ;


 int InitializeListHead (int *) ;
 int InsertHeadList (int *,int *) ;
 int IoQueueWorkItem (int ,int ,int ,TYPE_2__*) ;
 int KeAcquireSpinLockAtDpcLevel (int *) ;
 int KeReleaseSpinLockFromDpcLevel (int *) ;
 int WORKQUEUE_CRITICAL ;
 TYPE_4__* kernndis_functbl ;

void
ndis_return_packet(ndis_packet *p)
{
 ndis_miniport_block *block;

 if (p == ((void*)0))
  return;


 p->np_refcnt--;


 if (p->np_refcnt)
  return;

 block = ((struct ndis_softc *)p->np_softc)->ndis_block;

 KeAcquireSpinLockAtDpcLevel(&block->nmb_returnlock);
 InitializeListHead((&p->np_list));
 InsertHeadList((&block->nmb_returnlist), (&p->np_list));
 KeReleaseSpinLockFromDpcLevel(&block->nmb_returnlock);

 IoQueueWorkItem(block->nmb_returnitem,
     (io_workitem_func)kernndis_functbl[7].ipt_wrap,
     WORKQUEUE_CRITICAL, block);
}
