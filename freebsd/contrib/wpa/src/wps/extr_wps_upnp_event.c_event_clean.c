
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_event_ {int * http_event; TYPE_1__* s; } ;
struct TYPE_2__ {struct wps_event_* current_event; } ;


 int http_client_free (int *) ;

__attribute__((used)) static void event_clean(struct wps_event_ *e)
{
 if (e->s->current_event == e)
  e->s->current_event = ((void*)0);
 http_client_free(e->http_event);
 e->http_event = ((void*)0);
}
