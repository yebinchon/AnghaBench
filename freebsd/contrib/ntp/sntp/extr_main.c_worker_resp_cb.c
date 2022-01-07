
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ evutil_socket_t ;
struct TYPE_3__ {scalar_t__ resp_read_pipe; } ;
typedef TYPE_1__ blocking_child ;


 int DEBUG_INSIST (int) ;
 short EV_READ ;
 int process_blocking_resp (TYPE_1__*) ;

void
worker_resp_cb(
 evutil_socket_t fd,
 short what,
 void * ctx
 )
{
 blocking_child * c;

 DEBUG_INSIST(EV_READ & what);
 c = ctx;
 DEBUG_INSIST(fd == c->resp_read_pipe);
 process_blocking_resp(c);
}
