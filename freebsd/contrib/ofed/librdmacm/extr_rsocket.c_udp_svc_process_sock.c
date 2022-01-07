
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rs_svc_msg {int cmd; int status; TYPE_2__* rs; } ;
struct rs_svc {size_t cnt; int * sock; TYPE_1__* contexts; } ;
struct TYPE_5__ {int opts; int udp_sock; } ;
struct TYPE_4__ {int revents; int events; int fd; } ;


 int POLLIN ;
 int RS_OPT_SVC_ACTIVE ;



 int read_all (int ,struct rs_svc_msg*,int) ;
 int rs_svc_add_rs (struct rs_svc*,TYPE_2__*) ;
 int rs_svc_rm_rs (struct rs_svc*,TYPE_2__*) ;
 TYPE_1__* udp_svc_fds ;
 int write_all (int ,struct rs_svc_msg*,int) ;

__attribute__((used)) static void udp_svc_process_sock(struct rs_svc *svc)
{
 struct rs_svc_msg msg;

 read_all(svc->sock[1], &msg, sizeof msg);
 switch (msg.cmd) {
 case 130:
  msg.status = rs_svc_add_rs(svc, msg.rs);
  if (!msg.status) {
   msg.rs->opts |= RS_OPT_SVC_ACTIVE;
   udp_svc_fds = svc->contexts;
   udp_svc_fds[svc->cnt].fd = msg.rs->udp_sock;
   udp_svc_fds[svc->cnt].events = POLLIN;
   udp_svc_fds[svc->cnt].revents = 0;
  }
  break;
 case 128:
  msg.status = rs_svc_rm_rs(svc, msg.rs);
  if (!msg.status)
   msg.rs->opts &= ~RS_OPT_SVC_ACTIVE;
  break;
 case 129:
  msg.status = 0;
  break;
 default:
  break;
 }

 write_all(svc->sock[1], &msg, sizeof msg);
}
