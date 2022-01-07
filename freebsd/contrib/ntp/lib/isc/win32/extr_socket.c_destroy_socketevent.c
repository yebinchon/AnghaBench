
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* destroy ) (int *) ;int bufferlist; } ;
typedef TYPE_1__ isc_socketevent_t ;
typedef int isc_event_t ;


 int INSIST (int ) ;
 int ISC_LIST_EMPTY (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void
destroy_socketevent(isc_event_t *event) {
 isc_socketevent_t *ev = (isc_socketevent_t *)event;

 INSIST(ISC_LIST_EMPTY(ev->bufferlist));

 (ev->destroy)(event);
}
