
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct worker {int cmd; } ;
struct ub_stats_info {int dummy; } ;


 int VERB_ALGO ;
 int fatal_exit (char*,...) ;
 int free (int *) ;
 int memcpy (struct ub_stats_info*,int *,size_t) ;
 int server_stats_compile (struct worker*,struct ub_stats_info*,int) ;
 int tube_read_msg (int ,int **,scalar_t__*,int ) ;
 int verbose (int ,char*) ;
 int worker_cmd_stats ;
 int worker_cmd_stats_noreset ;
 int worker_send_cmd (struct worker*,int ) ;

void server_stats_obtain(struct worker* worker, struct worker* who,
 struct ub_stats_info* s, int reset)
{
 uint8_t *reply = ((void*)0);
 uint32_t len = 0;
 if(worker == who) {

  server_stats_compile(worker, s, reset);
  return;
 }

 verbose(VERB_ALGO, "write stats cmd");
 if(reset)
  worker_send_cmd(who, worker_cmd_stats);
 else worker_send_cmd(who, worker_cmd_stats_noreset);
 verbose(VERB_ALGO, "wait for stats reply");
 if(!tube_read_msg(worker->cmd, &reply, &len, 0))
  fatal_exit("failed to read stats over cmd channel");
 if(len != (uint32_t)sizeof(*s))
  fatal_exit("stats on cmd channel wrong length %d %d",
   (int)len, (int)sizeof(*s));
 memcpy(s, reply, (size_t)len);
 free(reply);
}
