
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rs_svc_msg {int status; } ;
struct rs_svc {int cnt; TYPE_1__** rss; int * sock; scalar_t__* contexts; } ;
struct pollfd {scalar_t__ revents; int events; int fd; } ;
struct TYPE_2__ {scalar_t__ keepalive_time; } ;


 int POLLIN ;
 int poll (struct pollfd*,int,int) ;
 scalar_t__ rs_get_time () ;
 int rs_svc_grow_sets (struct rs_svc*,int) ;
 int tcp_svc_process_sock (struct rs_svc*) ;
 int tcp_svc_send_keepalive (TYPE_1__*) ;
 scalar_t__* tcp_svc_timeouts ;
 int write_all (int ,struct rs_svc_msg*,int) ;

__attribute__((used)) static void *tcp_svc_run(void *arg)
{
 struct rs_svc *svc = arg;
 struct rs_svc_msg msg;
 struct pollfd fds;
 uint32_t now, next_timeout;
 int i, ret, timeout;

 ret = rs_svc_grow_sets(svc, 16);
 if (ret) {
  msg.status = ret;
  write_all(svc->sock[1], &msg, sizeof msg);
  return (void *) (uintptr_t) ret;
 }

 tcp_svc_timeouts = svc->contexts;
 fds.fd = svc->sock[1];
 fds.events = POLLIN;
 timeout = -1;
 do {
  poll(&fds, 1, timeout * 1000);
  if (fds.revents)
   tcp_svc_process_sock(svc);

  now = rs_get_time();
  next_timeout = ~0;
  for (i = 1; i <= svc->cnt; i++) {
   if (tcp_svc_timeouts[i] <= now) {
    tcp_svc_send_keepalive(svc->rss[i]);
    tcp_svc_timeouts[i] =
     now + svc->rss[i]->keepalive_time;
   }
   if (tcp_svc_timeouts[i] < next_timeout)
    next_timeout = tcp_svc_timeouts[i];
  }
  timeout = (int) (next_timeout - now);
 } while (svc->cnt >= 1);

 return ((void*)0);
}
