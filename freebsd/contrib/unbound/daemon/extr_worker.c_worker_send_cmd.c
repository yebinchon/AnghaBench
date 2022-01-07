
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct worker {int cmd; } ;
typedef enum worker_commands { ____Placeholder_worker_commands } worker_commands ;
typedef int c ;


 int htonl (int) ;
 int log_err (char*,int) ;
 int tube_write_msg (int ,int *,int,int ) ;

void
worker_send_cmd(struct worker* worker, enum worker_commands cmd)
{
 uint32_t c = (uint32_t)htonl(cmd);
 if(!tube_write_msg(worker->cmd, (uint8_t*)&c, sizeof(c), 0)) {
  log_err("worker send cmd %d failed", (int)cmd);
 }
}
