
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int isc_taskaction_t ;
struct TYPE_10__ {int * base; } ;
struct TYPE_11__ {int ev_destroy; int destroy; scalar_t__ attributes; scalar_t__ offset; scalar_t__ n; TYPE_2__ region; int bufferlist; int result; } ;
typedef TYPE_3__ isc_socketevent_t ;
typedef int isc_eventtype_t ;
struct TYPE_12__ {TYPE_1__* manager; } ;
typedef TYPE_4__ isc__socket_t ;
struct TYPE_9__ {int mctx; } ;


 int ISC_LINK_INIT (TYPE_3__*,int ) ;
 int ISC_LIST_INIT (int ) ;
 int ISC_R_UNSET ;
 int destroy_socketevent ;
 int ev_link ;
 scalar_t__ isc_event_allocate (int ,TYPE_4__*,int ,int ,void const*,int) ;

__attribute__((used)) static isc_socketevent_t *
allocate_socketevent(isc__socket_t *sock, isc_eventtype_t eventtype,
       isc_taskaction_t action, const void *arg)
{
 isc_socketevent_t *ev;

 ev = (isc_socketevent_t *)isc_event_allocate(sock->manager->mctx,
           sock, eventtype,
           action, arg,
           sizeof(*ev));

 if (ev == ((void*)0))
  return (((void*)0));

 ev->result = ISC_R_UNSET;
 ISC_LINK_INIT(ev, ev_link);
 ISC_LIST_INIT(ev->bufferlist);
 ev->region.base = ((void*)0);
 ev->n = 0;
 ev->offset = 0;
 ev->attributes = 0;
 ev->destroy = ev->ev_destroy;
 ev->ev_destroy = destroy_socketevent;

 return (ev);
}
