
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
 int UB_EVENT_MAGIC ;
 scalar_t__ calloc (int,int) ;
 int default_event_vmt ;
 int free (struct my_event*) ;
 int winsock_register_wsaevent (int ,int *,void*,void (*) (int,short,void*),void*) ;

__attribute__((used)) static struct ub_event*
my_winsock_register_wsaevent(struct ub_event_base* base, void* wsaevent,
 void (*cb)(int, short, void*), void* arg)
{
 (void)base;
 (void)wsaevent;
 (void)cb;
 (void)arg;
 return ((void*)0);

}
