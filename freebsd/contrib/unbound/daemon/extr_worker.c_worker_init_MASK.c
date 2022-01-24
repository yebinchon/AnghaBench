#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* cfg; int /*<<< orphan*/  scratch_buffer; int /*<<< orphan*/  mesh; scalar_t__ auth_zones; void* probe_timer; int /*<<< orphan*/  anchors; int /*<<< orphan*/  hints; int /*<<< orphan*/  fwds; int /*<<< orphan*/ * detect_cycle; int /*<<< orphan*/ * kill_sub; int /*<<< orphan*/ * add_sub; int /*<<< orphan*/ * attach_sub; int /*<<< orphan*/ * detach_subs; void* scratch; int /*<<< orphan*/  rnd; int /*<<< orphan*/  outnet; int /*<<< orphan*/ * alloc; int /*<<< orphan*/ * send_query; scalar_t__ worker_base; struct worker* worker; int /*<<< orphan*/  now_tv; int /*<<< orphan*/  now; int /*<<< orphan*/  infra_cache; } ;
struct dt_env {int dummy; } ;
struct worker {scalar_t__ thread_num; TYPE_3__ env; scalar_t__ base; TYPE_2__* daemon; int /*<<< orphan*/  rndstate; int /*<<< orphan*/  back; int /*<<< orphan*/  alloc; int /*<<< orphan*/  stats; void* scratchpad; void* stat_timer; int /*<<< orphan*/  cmd; int /*<<< orphan*/  numports; int /*<<< orphan*/  ports; int /*<<< orphan*/  front; int /*<<< orphan*/ * comsig; scalar_t__ need_to_exit; struct dt_env dtenv; } ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct listen_port {int dummy; } ;
struct config_file {int /*<<< orphan*/  msg_buffer_size; int /*<<< orphan*/  delay_close; scalar_t__ udp_upstream_without_downstream; scalar_t__ do_udp; int /*<<< orphan*/  outgoing_tcp_mss; int /*<<< orphan*/  unwanted_threshold; int /*<<< orphan*/  use_caps_bits_for_id; int /*<<< orphan*/  outgoing_num_tcp; scalar_t__ do_tcp; int /*<<< orphan*/  do_ip6; int /*<<< orphan*/  do_ip4; int /*<<< orphan*/  num_out_ifs; int /*<<< orphan*/  out_ifs; scalar_t__ outgoing_num_ports; int /*<<< orphan*/  tcp_idle_timeout; int /*<<< orphan*/  tcp_keepalive_timeout; scalar_t__ do_tcp_keepalive; scalar_t__ incoming_num_tcp; } ;
struct TYPE_6__ {int /*<<< orphan*/  mods; TYPE_3__* env; int /*<<< orphan*/  superalloc; int /*<<< orphan*/  connect_sslctx; int /*<<< orphan*/  listen_sslctx; int /*<<< orphan*/  tcl; int /*<<< orphan*/  rc_ports; int /*<<< orphan*/  rc; } ;
struct TYPE_5__ {scalar_t__ stat_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct worker*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct worker*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ ,struct worker*) ; 
 void* FUNC9 (scalar_t__,int /*<<< orphan*/ ,struct worker*) ; 
 int /*<<< orphan*/  FUNC10 (void*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct worker*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct config_file*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct config_file*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,struct listen_port*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,struct worker*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  mesh_add_sub ; 
 int /*<<< orphan*/  mesh_attach_sub ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  mesh_detach_subs ; 
 int /*<<< orphan*/  mesh_detect_cycle ; 
 int /*<<< orphan*/  mesh_state_delete ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct worker*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,struct config_file*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,struct worker*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  worker_alloc_cleanup ; 
 int /*<<< orphan*/  FUNC26 (struct worker*) ; 
 int /*<<< orphan*/  worker_handle_control_cmd ; 
 int /*<<< orphan*/  worker_handle_request ; 
 int /*<<< orphan*/  FUNC27 (struct worker*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  worker_probe_timer_cb ; 
 int /*<<< orphan*/  FUNC28 (struct worker*) ; 
 int /*<<< orphan*/  worker_send_query ; 
 int /*<<< orphan*/  worker_sighandler ; 
 int /*<<< orphan*/  worker_start_accept ; 
 int /*<<< orphan*/  worker_stat_timer_cb ; 
 int /*<<< orphan*/  worker_stop_accept ; 
 int /*<<< orphan*/  FUNC29 (struct worker*) ; 

int
FUNC30(struct worker* worker, struct config_file *cfg, 
	struct listen_port* ports, int do_sigs)
{
#ifdef USE_DNSTAP
	struct dt_env* dtenv = &worker->dtenv;
#else
	void* dtenv = NULL;
#endif
	worker->need_to_exit = 0;
	worker->base = FUNC4(do_sigs);
	if(!worker->base) {
		FUNC17("could not create event handling base");
		FUNC26(worker);
		return 0;
	}
	FUNC5(worker->base, &worker_stop_accept,
		&worker_start_accept, worker);
	if(do_sigs) {
#ifdef SIGHUP
		ub_thread_sig_unblock(SIGHUP);
#endif
		FUNC24(SIGINT);
#ifdef SIGQUIT
		ub_thread_sig_unblock(SIGQUIT);
#endif
		FUNC24(SIGTERM);
#ifndef LIBEVENT_SIGNAL_PROBLEM
		worker->comsig = FUNC8(worker->base, 
			worker_sighandler, worker);
		if(!worker->comsig 
#ifdef SIGHUP
			|| !comm_signal_bind(worker->comsig, SIGHUP)
#endif
#ifdef SIGQUIT
			|| !comm_signal_bind(worker->comsig, SIGQUIT)
#endif
			|| !FUNC7(worker->comsig, SIGTERM)
			|| !FUNC7(worker->comsig, SIGINT)) {
			FUNC17("could not create signal handlers");
			FUNC26(worker);
			return 0;
		}
#endif /* LIBEVENT_SIGNAL_PROBLEM */
		if(!FUNC11(worker->daemon->rc, 
			worker->daemon->rc_ports, worker)) {
			FUNC26(worker);
			return 0;
		}
#ifdef UB_ON_WINDOWS
		wsvc_setup_worker(worker);
#endif /* UB_ON_WINDOWS */
	} else { /* !do_sigs */
		worker->comsig = NULL;
	}
	worker->front = FUNC16(worker->base, ports,
		cfg->msg_buffer_size, (int)cfg->incoming_num_tcp,
		cfg->do_tcp_keepalive
			? cfg->tcp_keepalive_timeout
			: cfg->tcp_idle_timeout,
			worker->daemon->tcl,
		worker->daemon->listen_sslctx,
		dtenv, worker_handle_request, worker);
	if(!worker->front) {
		FUNC17("could not create listening sockets");
		FUNC26(worker);
		return 0;
	}
	worker->back = FUNC19(worker->base,
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
		FUNC17("could not create outgoing sockets");
		FUNC26(worker);
		return 0;
	}
	/* start listening to commands */
	if(!FUNC23(worker->cmd, worker->base,
		&worker_handle_control_cmd, worker)) {
		FUNC17("could not create control compt.");
		FUNC26(worker);
		return 0;
	}
	worker->stat_timer = FUNC9(worker->base, 
		worker_stat_timer_cb, worker);
	if(!worker->stat_timer) {
		FUNC17("could not create statistics timer");
	}

	/* we use the msg_buffer_size as a good estimate for what the 
	 * user wants for memory usage sizes */
	worker->scratchpad = FUNC20(cfg->msg_buffer_size);
	if(!worker->scratchpad) {
		FUNC17("malloc failure");
		FUNC26(worker);
		return 0;
	}

	FUNC21(&worker->stats, cfg);
	FUNC0(&worker->alloc, &worker->daemon->superalloc, 
		worker->thread_num);
	FUNC1(&worker->alloc, &worker_alloc_cleanup, worker);
	worker->env = *worker->daemon->env;
	FUNC6(worker->base, &worker->env.now, &worker->env.now_tv);
	worker->env.worker = worker;
	worker->env.worker_base = worker->base;
	worker->env.send_query = &worker_send_query;
	worker->env.alloc = &worker->alloc;
	worker->env.outnet = worker->back;
	worker->env.rnd = worker->rndstate;
	/* If case prefetch is triggered, the corresponding mesh will clear
	 * the scratchpad for the module env in the middle of request handling.
	 * It would be prone to a use-after-free kind of bug, so we avoid
	 * sharing it with worker's own scratchpad at the cost of having
	 * one more pad per worker. */
	worker->env.scratch = FUNC20(cfg->msg_buffer_size);
	if(!worker->env.scratch) {
		FUNC17("malloc failure");
		FUNC26(worker);
		return 0;
	}
	worker->env.mesh = FUNC18(&worker->daemon->mods, &worker->env);
	worker->env.detach_subs = &mesh_detach_subs;
	worker->env.attach_sub = &mesh_attach_sub;
	worker->env.add_sub = &mesh_add_sub;
	worker->env.kill_sub = &mesh_state_delete;
	worker->env.detect_cycle = &mesh_detect_cycle;
	worker->env.scratch_buffer = FUNC22(cfg->msg_buffer_size);
	if(!(worker->env.fwds = FUNC13()) ||
		!FUNC12(worker->env.fwds, cfg)) {
		FUNC17("Could not set forward zones");
		FUNC26(worker);
		return 0;
	}
	if(!(worker->env.hints = FUNC15()) ||
		!FUNC14(worker->env.hints, cfg)) {
		FUNC17("Could not set root or stub hints");
		FUNC26(worker);
		return 0;
	}
	/* one probe timer per process -- if we have 5011 anchors */
	if(FUNC3(worker->env.anchors) > 0
#ifndef THREADS_DISABLED
		&& worker->thread_num == 0
#endif
		) {
		struct timeval tv;
		tv.tv_sec = 0;
		tv.tv_usec = 0;
		worker->env.probe_timer = FUNC9(worker->base,
			worker_probe_timer_cb, worker);
		if(!worker->env.probe_timer) {
			FUNC17("could not create 5011-probe timer");
		} else {
			/* let timer fire, then it can reset itself */
			FUNC10(worker->env.probe_timer, &tv);
		}
	}
	/* zone transfer tasks, setup once per process, if any */
	if(worker->env.auth_zones
#ifndef THREADS_DISABLED
		&& worker->thread_num == 0
#endif
		) {
		FUNC2(worker->env.auth_zones, &worker->env);
	}
	if(!worker->env.mesh || !worker->env.scratch_buffer) {
		FUNC26(worker);
		return 0;
	}
	FUNC27(worker, NULL);
	/* if statistics enabled start timer */
	if(worker->env.cfg->stat_interval > 0) {
		FUNC25(VERB_ALGO, "set statistics interval %d secs", 
			worker->env.cfg->stat_interval);
		FUNC28(worker);
	}
	return 1;
}