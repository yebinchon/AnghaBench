
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ub_event_base {int dummy; } ;
struct TYPE_3__ {int base; } ;


 TYPE_1__* AS_MY_EVENT_BASE (struct ub_event_base*) ;
 int event_base_free (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void
my_event_base_free(struct ub_event_base* base)
{
 free(AS_MY_EVENT_BASE(base));
}
