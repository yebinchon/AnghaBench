
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct daemon {int num; TYPE_1__** workers; } ;
struct TYPE_2__ {int thr_id; } ;


 int VERB_ALGO ;
 int log_assert (struct daemon*) ;
 int ub_thread_join (int ) ;
 int verbose (int ,char*,...) ;
 int worker_cmd_quit ;
 int worker_send_cmd (TYPE_1__*,int ) ;

__attribute__((used)) static void
daemon_stop_others(struct daemon* daemon)
{
 int i;
 log_assert(daemon);
 verbose(VERB_ALGO, "stop threads");


 for(i=1; i<daemon->num; i++) {
  worker_send_cmd(daemon->workers[i], worker_cmd_quit);
 }

 for(i=1; i<daemon->num; i++) {

  verbose(VERB_ALGO, "join %d", i);
  ub_thread_join(daemon->workers[i]->thr_id);
  verbose(VERB_ALGO, "join success %d", i);
 }
}
