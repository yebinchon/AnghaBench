
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_event {int dummy; } ;
struct TYPE_2__ {int ev; } ;


 TYPE_1__* AS_MY_EVENT (struct ub_event*) ;
 int NATIVE_BITS (int) ;
 int winsock_tcp_wouldblock (int *,int ) ;

__attribute__((used)) static void
my_winsock_tcp_wouldblock(struct ub_event* ev, int eventbits)
{



 (void)ev;
 (void)eventbits;

}
