
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_event_ {int dummy; } ;
struct subscription {struct wps_event_* current_event; } ;


 int event_delete (struct wps_event_*) ;
 struct wps_event_* event_dequeue (struct subscription*) ;

void event_delete_all(struct subscription *s)
{
 struct wps_event_ *e;
 while ((e = event_dequeue(s)) != ((void*)0))
  event_delete(e);
 if (s->current_event) {
  event_delete(s->current_event);

 }
}
