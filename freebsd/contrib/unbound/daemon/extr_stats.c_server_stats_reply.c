
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct worker {TYPE_2__* daemon; } ;
struct ub_stats_info {int dummy; } ;
typedef int s ;
struct TYPE_4__ {TYPE_1__** workers; } ;
struct TYPE_3__ {int cmd; } ;


 int VERB_ALGO ;
 int fatal_exit (char*) ;
 int server_stats_compile (struct worker*,struct ub_stats_info*,int) ;
 int tube_write_msg (int ,int *,int,int ) ;
 int verbose (int ,char*) ;

void server_stats_reply(struct worker* worker, int reset)
{
 struct ub_stats_info s;
 server_stats_compile(worker, &s, reset);
 verbose(VERB_ALGO, "write stats replymsg");
 if(!tube_write_msg(worker->daemon->workers[0]->cmd,
  (uint8_t*)&s, sizeof(s), 0))
  fatal_exit("could not write stat values over cmd channel");
}
