
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_base {struct comm_base* eb; int * base; int slow_accept; scalar_t__ slow_accept_enabled; } ;


 int free (struct comm_base*) ;
 int log_err (char*) ;
 int ub_event_base_free (int *) ;
 scalar_t__ ub_event_del (int ) ;
 int ub_event_free (int ) ;

void
comm_base_delete(struct comm_base* b)
{
 if(!b)
  return;
 if(b->eb->slow_accept_enabled) {
  if(ub_event_del(b->eb->slow_accept) != 0) {
   log_err("could not event_del slow_accept");
  }
  ub_event_free(b->eb->slow_accept);
 }
 ub_event_base_free(b->eb->base);
 b->eb->base = ((void*)0);
 free(b->eb);
 free(b);
}
