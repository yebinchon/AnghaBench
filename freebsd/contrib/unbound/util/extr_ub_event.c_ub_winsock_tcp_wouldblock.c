
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event {int dummy; } ;


 int AS_EVENT (struct ub_event*) ;
 int NATIVE_BITS (int) ;
 int winsock_tcp_wouldblock (int ,int ) ;

void
ub_winsock_tcp_wouldblock(struct ub_event* ev, int eventbits)
{



 (void)ev;
 (void)eventbits;

}
