
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct thread {int dummy; } ;
struct TYPE_5__ {scalar_t__ dh_size; scalar_t__ dh_sigstate; int dh_type; int dh_waitlisthead; } ;
struct TYPE_6__ {TYPE_1__ no_dh; int no_obj; } ;
typedef TYPE_2__ nt_objref ;
typedef int ndis_status ;
typedef int ndis_handle ;


 int DISP_TYPE_THREAD ;
 int InitializeListHead (int *) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int link ;
 TYPE_2__* malloc (int,int ,int) ;
 int ntoskrnl_reflist ;

__attribute__((used)) static ndis_status
ObReferenceObjectByHandle(ndis_handle handle, uint32_t reqaccess, void *otype,
 uint8_t accessmode, void **object, void **handleinfo)
{
 nt_objref *nr;

 nr = malloc(sizeof(nt_objref), M_DEVBUF, M_NOWAIT|M_ZERO);
 if (nr == ((void*)0))
  return (STATUS_INSUFFICIENT_RESOURCES);

 InitializeListHead((&nr->no_dh.dh_waitlisthead));
 nr->no_obj = handle;
 nr->no_dh.dh_type = DISP_TYPE_THREAD;
 nr->no_dh.dh_sigstate = 0;
 nr->no_dh.dh_size = (uint8_t)(sizeof(struct thread) /
     sizeof(uint32_t));
 TAILQ_INSERT_TAIL(&ntoskrnl_reflist, nr, link);
 *object = nr;

 return (STATUS_SUCCESS);
}
