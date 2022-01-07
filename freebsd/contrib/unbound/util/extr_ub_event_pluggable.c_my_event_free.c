
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event {int dummy; } ;


 int AS_MY_EVENT (struct ub_event*) ;
 int free (int ) ;

__attribute__((used)) static void
my_event_free(struct ub_event* ev)
{
 free(AS_MY_EVENT(ev));
}
