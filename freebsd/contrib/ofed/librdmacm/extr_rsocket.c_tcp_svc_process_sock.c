
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rs_svc_msg {int cmd; int status; TYPE_1__* rs; } ;
struct rs_svc {size_t cnt; int * sock; scalar_t__* contexts; } ;
struct TYPE_4__ {scalar_t__ keepalive_time; int opts; } ;


 int EBADF ;
 int RS_OPT_SVC_ACTIVE ;




 int read_all (int ,struct rs_svc_msg*,int) ;
 scalar_t__ rs_get_time () ;
 int rs_svc_add_rs (struct rs_svc*,TYPE_1__*) ;
 int rs_svc_index (struct rs_svc*,TYPE_1__*) ;
 int rs_svc_rm_rs (struct rs_svc*,TYPE_1__*) ;
 scalar_t__* tcp_svc_timeouts ;
 int write_all (int ,struct rs_svc_msg*,int) ;

__attribute__((used)) static void tcp_svc_process_sock(struct rs_svc *svc)
{
 struct rs_svc_msg msg;
 int i;

 read_all(svc->sock[1], &msg, sizeof msg);
 switch (msg.cmd) {
 case 131:
  msg.status = rs_svc_add_rs(svc, msg.rs);
  if (!msg.status) {
   msg.rs->opts |= RS_OPT_SVC_ACTIVE;
   tcp_svc_timeouts = svc->contexts;
   tcp_svc_timeouts[svc->cnt] = rs_get_time() +
           msg.rs->keepalive_time;
  }
  break;
 case 128:
  msg.status = rs_svc_rm_rs(svc, msg.rs);
  if (!msg.status)
   msg.rs->opts &= ~RS_OPT_SVC_ACTIVE;
  break;
 case 130:
  i = rs_svc_index(svc, msg.rs);
  if (i >= 0) {
   tcp_svc_timeouts[i] = rs_get_time() + msg.rs->keepalive_time;
   msg.status = 0;
  } else {
   msg.status = EBADF;
  }
  break;
 case 129:
  msg.status = 0;
  break;
 default:
  break;
 }
 write_all(svc->sock[1], &msg, sizeof msg);
}
