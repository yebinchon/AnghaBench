
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int * iocp; } ;


 int EVUTIL_ASSERT (int) ;
 int event_iocp_shutdown_ (int *,int) ;

void
event_base_stop_iocp_(struct event_base *base)
{
}
