
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* cfg; int scratch_buffer; int mesh; scalar_t__ auth_zones; void* probe_timer; int anchors; int hints; int fwds; int * detect_cycle; int * kill_sub; int * add_sub; int * attach_sub; int * detach_subs; void* scratch; int rnd; int outnet; int * alloc; int * send_query; scalar_t__ worker_base; struct worker* worker; int now_tv; int now; int infra_cache; } ;
struct dt_env {int dummy; } ;
struct worker {scalar_t__ thread_num; TYPE_3__ env; scalar_t__ base; TYPE_2__* daemon; int rndstate; int back; int alloc; int stats; void* scratchpad; void* stat_timer; int cmd; int numports; int ports; int front; int * comsig; scalar_t__ need_to_exit; struct dt_env dtenv; } ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct listen_port {int dummy; } ;
struct config_file {int msg_buffer_size; int delay_close; scalar_t__ udp_upstream_without_downstream; scalar_t__ do_udp; int outgoing_tcp_mss; int unwanted_threshold; int use_caps_bits_for_id; int outgoing_num_tcp; scalar_t__ do_tcp; int do_ip6; int do_ip4; int num_out_ifs; int out_ifs; scalar_t__ outgoing_num_ports; int tcp_idle_timeout; int tcp_keepalive_timeout; scalar_t__ do_tcp_keepalive; scalar_t__ incoming_num_tcp; } ;
struct TYPE_6__ {int mods; TYPE_3__* env; int superalloc; int connect_sslctx; int listen_sslctx; int tcl; int rc_ports; int rc; } ;
struct TYPE_5__ {scalar_t__ stat_interval; } ;


 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int VERB_ALGO ;
 int alloc_init (int *,int *,scalar_t__) ;
 int alloc_set_id_cleanup (int *,int *,struct worker*) ;
 int auth_xfer_pickup_initial (scalar_t__,TYPE_3__*) ;
 scalar_t__ autr_get_num_anchors (int ) ;
 scalar_t__ comm_base_create (int) ;
 int comm_base_set_slow_accept_handlers (scalar_t__,int *,int *,struct worker*) ;
 int comm_base_timept (scalar_t__,int *,int *) ;
 int comm_signal_bind (int *,int ) ;
 int * comm_signal_create (scalar_t__,int ,struct worker*) ;
 void* comm_timer_create (scalar_t__,int ,struct worker*) ;
 int comm_timer_set (void*,struct timeval*) ;
 int daemon_remote_open_accept (int ,int ,struct worker*) ;
 int forwards_apply_cfg (int ,struct config_file*) ;
 int forwards_create () ;
 int hints_apply_cfg (int ,struct config_file*) ;
 int hints_create () ;
 int listen_create (scalar_t__,struct listen_port*,int ,int,int ,int ,int ,void*,int ,struct worker*) ;
 int log_err (char*) ;
 int mesh_add_sub ;
 int mesh_attach_sub ;
 int mesh_create (int *,TYPE_3__*) ;
 int mesh_detach_subs ;
 int mesh_detect_cycle ;
 int mesh_state_delete ;
 int outside_network_create (scalar_t__,int ,size_t,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int *,struct worker*,int,int ,int ,void*) ;
 void* regional_create_custom (int ) ;
 int server_stats_init (int *,struct config_file*) ;
 int sldns_buffer_new (int ) ;
 int tube_setup_bg_listen (int ,scalar_t__,int *,struct worker*) ;
 int ub_thread_sig_unblock (int ) ;
 int verbose (int ,char*,scalar_t__) ;
 int worker_alloc_cleanup ;
 int worker_delete (struct worker*) ;
 int worker_handle_control_cmd ;
 int worker_handle_request ;
 int worker_mem_report (struct worker*,int *) ;
 int worker_probe_timer_cb ;
 int worker_restart_timer (struct worker*) ;
 int worker_send_query ;
 int worker_sighandler ;
 int worker_start_accept ;
 int worker_stat_timer_cb ;
 int worker_stop_accept ;
 int wsvc_setup_worker (struct worker*) ;

int
worker_init(struct worker* worker, struct config_file *cfg,
 struct listen_port* ports, int do_sigs)
{



 void* dtenv = ((void*)0);

 worker->need_to_exit = 0;
 worker->base = comm_base_create(do_sigs);
 if(!worker->base) {
  log_err("could not create event handling base");
  worker_delete(worker);
  return 0;
 }
 comm_base_set_slow_accept_handlers(worker->base, &worker_stop_accept,
  &worker_start_accept, worker);
 if(do_sigs) {



  ub_thread_sig_unblock(SIGINT);



  ub_thread_sig_unblock(SIGTERM);

  worker->comsig = comm_signal_create(worker->base,
   worker_sighandler, worker);
  if(!worker->comsig






   || !comm_signal_bind(worker->comsig, SIGTERM)
   || !comm_signal_bind(worker->comsig, SIGINT)) {
   log_err("could not create signal handlers");
   worker_delete(worker);
   return 0;
  }

  if(!daemon_remote_open_accept(worker->daemon->rc,
   worker->daemon->rc_ports, worker)) {
   worker_delete(worker);
   return 0;
  }



 } else {
  worker->comsig = ((void*)0);
 }
 worker->front = listen_create(worker->base, ports,
  cfg->msg_buffer_size, (int)cfg->incoming_num_tcp,
  cfg->do_tcp_keepalive
   ? cfg->tcp_keepalive_timeout
   : cfg->tcp_idle_timeout,
   worker->daemon->tcl,
  worker->daemon->listen_sslctx,
  dtenv, worker_handle_request, worker);
 if(!worker->front) {
  log_err("could not create listening sockets");
  worker_delete(worker);
  return 0;
 }
 worker->back = outside_network_create(worker->base,
  cfg->msg_buffer_size, (size_t)cfg->outgoing_num_ports,
  cfg->out_ifs, cfg->num_out_ifs, cfg->do_ip4, cfg->do_ip6,
  cfg->do_tcp?cfg->outgoing_num_tcp:0,
  worker->daemon->env->infra_cache, worker->rndstate,
  cfg->use_caps_bits_for_id, worker->ports, worker->numports,
  cfg->unwanted_threshold, cfg->outgoing_tcp_mss,
  &worker_alloc_cleanup, worker,
  cfg->do_udp || cfg->udp_upstream_without_downstream,
  worker->daemon->connect_sslctx, cfg->delay_close,
  dtenv);
 if(!worker->back) {
  log_err("could not create outgoing sockets");
  worker_delete(worker);
  return 0;
 }

 if(!tube_setup_bg_listen(worker->cmd, worker->base,
  &worker_handle_control_cmd, worker)) {
  log_err("could not create control compt.");
  worker_delete(worker);
  return 0;
 }
 worker->stat_timer = comm_timer_create(worker->base,
  worker_stat_timer_cb, worker);
 if(!worker->stat_timer) {
  log_err("could not create statistics timer");
 }



 worker->scratchpad = regional_create_custom(cfg->msg_buffer_size);
 if(!worker->scratchpad) {
  log_err("malloc failure");
  worker_delete(worker);
  return 0;
 }

 server_stats_init(&worker->stats, cfg);
 alloc_init(&worker->alloc, &worker->daemon->superalloc,
  worker->thread_num);
 alloc_set_id_cleanup(&worker->alloc, &worker_alloc_cleanup, worker);
 worker->env = *worker->daemon->env;
 comm_base_timept(worker->base, &worker->env.now, &worker->env.now_tv);
 worker->env.worker = worker;
 worker->env.worker_base = worker->base;
 worker->env.send_query = &worker_send_query;
 worker->env.alloc = &worker->alloc;
 worker->env.outnet = worker->back;
 worker->env.rnd = worker->rndstate;





 worker->env.scratch = regional_create_custom(cfg->msg_buffer_size);
 if(!worker->env.scratch) {
  log_err("malloc failure");
  worker_delete(worker);
  return 0;
 }
 worker->env.mesh = mesh_create(&worker->daemon->mods, &worker->env);
 worker->env.detach_subs = &mesh_detach_subs;
 worker->env.attach_sub = &mesh_attach_sub;
 worker->env.add_sub = &mesh_add_sub;
 worker->env.kill_sub = &mesh_state_delete;
 worker->env.detect_cycle = &mesh_detect_cycle;
 worker->env.scratch_buffer = sldns_buffer_new(cfg->msg_buffer_size);
 if(!(worker->env.fwds = forwards_create()) ||
  !forwards_apply_cfg(worker->env.fwds, cfg)) {
  log_err("Could not set forward zones");
  worker_delete(worker);
  return 0;
 }
 if(!(worker->env.hints = hints_create()) ||
  !hints_apply_cfg(worker->env.hints, cfg)) {
  log_err("Could not set root or stub hints");
  worker_delete(worker);
  return 0;
 }

 if(autr_get_num_anchors(worker->env.anchors) > 0

  && worker->thread_num == 0

  ) {
  struct timeval tv;
  tv.tv_sec = 0;
  tv.tv_usec = 0;
  worker->env.probe_timer = comm_timer_create(worker->base,
   worker_probe_timer_cb, worker);
  if(!worker->env.probe_timer) {
   log_err("could not create 5011-probe timer");
  } else {

   comm_timer_set(worker->env.probe_timer, &tv);
  }
 }

 if(worker->env.auth_zones

  && worker->thread_num == 0

  ) {
  auth_xfer_pickup_initial(worker->env.auth_zones, &worker->env);
 }
 if(!worker->env.mesh || !worker->env.scratch_buffer) {
  worker_delete(worker);
  return 0;
 }
 worker_mem_report(worker, ((void*)0));

 if(worker->env.cfg->stat_interval > 0) {
  verbose(VERB_ALGO, "set statistics interval %d secs",
   worker->env.cfg->stat_interval);
  worker_restart_timer(worker);
 }
 return 1;
}
