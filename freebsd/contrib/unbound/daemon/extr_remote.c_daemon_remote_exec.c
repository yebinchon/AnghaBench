
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct worker {int cmd; } ;


 int VERB_ALGO ;
 int execute_cmd (int *,int *,char*,struct worker*) ;
 int free (int *) ;
 int log_err (char*) ;
 int tube_read_msg (int ,int **,int *,int ) ;
 int verbose (int ,char*,char*) ;

void
daemon_remote_exec(struct worker* worker)
{

 uint8_t* msg = ((void*)0);
 uint32_t len = 0;
 if(!tube_read_msg(worker->cmd, &msg, &len, 0)) {
  log_err("daemon_remote_exec: tube_read_msg failed");
  return;
 }
 verbose(VERB_ALGO, "remote exec distributed: %s", (char*)msg);
 execute_cmd(((void*)0), ((void*)0), (char*)msg, worker);
 free(msg);
}
