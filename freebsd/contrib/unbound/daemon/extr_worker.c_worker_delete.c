
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scratch; int probe_timer; int hints; int fwds; int scratch_buffer; scalar_t__ mesh; } ;
struct worker {scalar_t__ thread_num; int scratchpad; TYPE_1__ env; int alloc; int rndstate; int base; struct worker* ports; int stat_timer; int cmd; int comsig; int back; int front; int stats; } ;


 scalar_t__ VERB_OPS ;
 int alloc_clear (int *) ;
 int comm_base_delete (int ) ;
 int comm_signal_delete (int ) ;
 int comm_timer_delete (int ) ;
 int forwards_delete (int ) ;
 int free (struct worker*) ;
 int hints_delete (int ) ;
 int listen_delete (int ) ;
 int mesh_delete (scalar_t__) ;
 int mesh_stats (scalar_t__,char*) ;
 int outside_network_delete (int ) ;
 int outside_network_quit_prepare (int ) ;
 int regional_destroy (int ) ;
 int server_stats_log (int *,struct worker*,scalar_t__) ;
 int sldns_buffer_free (int ) ;
 int tube_delete (int ) ;
 int ub_randfree (int ) ;
 scalar_t__ verbosity ;
 int worker_mem_report (struct worker*,int *) ;
 int wsvc_desetup_worker (struct worker*) ;

void
worker_delete(struct worker* worker)
{
 if(!worker)
  return;
 if(worker->env.mesh && verbosity >= VERB_OPS) {
  server_stats_log(&worker->stats, worker, worker->thread_num);
  mesh_stats(worker->env.mesh, "mesh has");
  worker_mem_report(worker, ((void*)0));
 }
 outside_network_quit_prepare(worker->back);
 mesh_delete(worker->env.mesh);
 sldns_buffer_free(worker->env.scratch_buffer);
 forwards_delete(worker->env.fwds);
 hints_delete(worker->env.hints);
 listen_delete(worker->front);
 outside_network_delete(worker->back);
 comm_signal_delete(worker->comsig);
 tube_delete(worker->cmd);
 comm_timer_delete(worker->stat_timer);
 comm_timer_delete(worker->env.probe_timer);
 free(worker->ports);
 if(worker->thread_num == 0) {



 }
 comm_base_delete(worker->base);
 ub_randfree(worker->rndstate);
 alloc_clear(&worker->alloc);
 regional_destroy(worker->env.scratch);
 regional_destroy(worker->scratchpad);
 free(worker);
}
