
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct daemon_remote {TYPE_2__* worker; } ;
struct TYPE_6__ {int cmd; } ;
struct TYPE_5__ {TYPE_1__* daemon; } ;
struct TYPE_4__ {int num; TYPE_3__** workers; } ;
typedef int RES ;


 int ssl_printf (int *,char*) ;
 scalar_t__ strlen (char*) ;
 int tube_write_msg (int ,int *,scalar_t__,int ) ;
 int worker_cmd_remote ;
 int worker_send_cmd (TYPE_3__*,int ) ;

__attribute__((used)) static void
distribute_cmd(struct daemon_remote* rc, RES* ssl, char* cmd)
{
 int i;
 if(!cmd || !ssl)
  return;

 for(i=1; i<rc->worker->daemon->num; i++) {
  worker_send_cmd(rc->worker->daemon->workers[i],
   worker_cmd_remote);
  if(!tube_write_msg(rc->worker->daemon->workers[i]->cmd,
   (uint8_t*)cmd, strlen(cmd)+1, 0)) {
   ssl_printf(ssl, "error could not distribute cmd\n");
   return;
  }
 }
}
