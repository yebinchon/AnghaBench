
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ev_size; int ev_destroy_arg; } ;
typedef TYPE_1__ isc_event_t ;


 int isc_mem_put (int ,TYPE_1__*,int ) ;

__attribute__((used)) static void
destroy(isc_event_t *event) {
 isc_mem_put(event->ev_destroy_arg, event, event->ev_size);
}
