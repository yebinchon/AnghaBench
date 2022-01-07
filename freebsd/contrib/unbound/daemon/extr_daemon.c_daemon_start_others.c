
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct daemon {int num; TYPE_1__** workers; } ;
struct TYPE_2__ {int cmd; int thr_id; } ;


 int VERB_ALGO ;
 int log_assert (struct daemon*) ;
 int thread_start ;
 int tube_close_read (int ) ;
 int ub_thread_create (int *,int ,TYPE_1__*) ;
 int verbose (int ,char*) ;

__attribute__((used)) static void
daemon_start_others(struct daemon* daemon)
{
 int i;
 log_assert(daemon);
 verbose(VERB_ALGO, "start threads");

 for(i=1; i<daemon->num; i++) {
  ub_thread_create(&daemon->workers[i]->thr_id,
   thread_start, daemon->workers[i]);




 }
}
