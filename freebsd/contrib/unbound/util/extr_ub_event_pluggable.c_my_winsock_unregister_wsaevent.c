
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ub_event {int dummy; } ;
struct TYPE_3__ {int ev; } ;


 TYPE_1__* AS_MY_EVENT (struct ub_event*) ;
 int free (TYPE_1__*) ;
 int winsock_unregister_wsaevent (int *) ;

__attribute__((used)) static void
my_winsock_unregister_wsaevent(struct ub_event* ev)
{




 (void)ev;

}
