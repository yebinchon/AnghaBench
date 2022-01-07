
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_event_base {int dummy; } ;
struct ub_event {int * vmt; int magic; } ;
struct my_event {struct ub_event super; int ev; } ;
struct TYPE_2__ {int base; } ;


 TYPE_1__* AS_MY_EVENT_BASE (struct ub_event_base*) ;
 int NATIVE_BITS_CB (void (*) (int,short,void*)) ;
 int UB_EVENT_MAGIC ;
 scalar_t__ calloc (int,int) ;
 int default_event_vmt ;
 scalar_t__ event_base_set (int ,int *) ;
 int free (struct my_event*) ;
 int signal_set (int *,int,int ,void*) ;

__attribute__((used)) static struct ub_event*
my_signal_new(struct ub_event_base* base, int fd,
 void (*cb)(int, short, void*), void* arg)
{
 struct my_event *my_ev = (struct my_event*)calloc(1,
  sizeof(struct my_event));

 if (!my_ev)
  return ((void*)0);

 signal_set(&my_ev->ev, fd, NATIVE_BITS_CB(cb), arg);
 if (event_base_set(AS_MY_EVENT_BASE(base)->base, &my_ev->ev) != 0) {
  free(my_ev);
  return ((void*)0);
 }
 my_ev->super.magic = UB_EVENT_MAGIC;
 my_ev->super.vmt = &default_event_vmt;
 return &my_ev->super;
}
