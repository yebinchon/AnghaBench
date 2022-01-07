
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* ev_destroy ) (TYPE_1__*) ;} ;
typedef TYPE_1__ isc_event_t ;


 int REQUIRE (int ) ;
 int stub1 (TYPE_1__*) ;

void
isc_event_free(isc_event_t **eventp) {
 isc_event_t *event;

 REQUIRE(eventp != ((void*)0));
 event = *eventp;
 REQUIRE(event != ((void*)0));

 if (event->ev_destroy != ((void*)0))
  (event->ev_destroy)(event);

 *eventp = ((void*)0);
}
