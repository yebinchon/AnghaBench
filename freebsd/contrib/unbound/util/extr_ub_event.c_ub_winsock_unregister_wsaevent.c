
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event {int dummy; } ;


 int AS_EVENT (struct ub_event*) ;
 int free (int ) ;
 int winsock_unregister_wsaevent (int ) ;

void
ub_winsock_unregister_wsaevent(struct ub_event* ev)
{




 (void)ev;

}
