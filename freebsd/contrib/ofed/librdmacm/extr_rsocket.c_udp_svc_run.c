
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rs_svc_msg {int status; } ;
struct rs_svc {int cnt; int * rss; int * sock; TYPE_1__* contexts; } ;
struct TYPE_3__ {scalar_t__ revents; int events; int fd; } ;


 int POLLIN ;
 int poll (TYPE_1__*,int,int) ;
 int rs_svc_grow_sets (struct rs_svc*,int) ;
 TYPE_1__* udp_svc_fds ;
 int udp_svc_process_rs (int ) ;
 int udp_svc_process_sock (struct rs_svc*) ;
 int write_all (int ,struct rs_svc_msg*,int) ;

__attribute__((used)) static void *udp_svc_run(void *arg)
{
 struct rs_svc *svc = arg;
 struct rs_svc_msg msg;
 int i, ret;

 ret = rs_svc_grow_sets(svc, 4);
 if (ret) {
  msg.status = ret;
  write_all(svc->sock[1], &msg, sizeof msg);
  return (void *) (uintptr_t) ret;
 }

 udp_svc_fds = svc->contexts;
 udp_svc_fds[0].fd = svc->sock[1];
 udp_svc_fds[0].events = POLLIN;
 do {
  for (i = 0; i <= svc->cnt; i++)
   udp_svc_fds[i].revents = 0;

  poll(udp_svc_fds, svc->cnt + 1, -1);
  if (udp_svc_fds[0].revents)
   udp_svc_process_sock(svc);

  for (i = 1; i <= svc->cnt; i++) {
   if (udp_svc_fds[i].revents)
    udp_svc_process_rs(svc->rss[i]);
  }
 } while (svc->cnt >= 1);

 return ((void*)0);
}
