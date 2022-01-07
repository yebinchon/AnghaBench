
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;


 int event_debug_note_teardown_ (struct event*) ;
 int event_del (struct event*) ;
 int mm_free (struct event*) ;

void
event_free(struct event *ev)
{





 event_del(ev);
 event_debug_note_teardown_(ev);
 mm_free(ev);

}
