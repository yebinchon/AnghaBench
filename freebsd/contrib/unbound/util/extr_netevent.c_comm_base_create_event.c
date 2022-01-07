
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;
struct internal_base {struct ub_event_base* base; } ;
struct comm_base {struct internal_base* eb; } ;


 scalar_t__ calloc (int,int) ;
 int free (struct comm_base*) ;
 int ub_comm_base_now (struct comm_base*) ;

struct comm_base*
comm_base_create_event(struct ub_event_base* base)
{
 struct comm_base* b = (struct comm_base*)calloc(1,
  sizeof(struct comm_base));
 if(!b)
  return ((void*)0);
 b->eb = (struct internal_base*)calloc(1, sizeof(struct internal_base));
 if(!b->eb) {
  free(b);
  return ((void*)0);
 }
 b->eb->base = base;
 ub_comm_base_now(b);
 return b;
}
