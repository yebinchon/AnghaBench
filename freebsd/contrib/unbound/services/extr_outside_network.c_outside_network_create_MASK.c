#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ub_randstate {int dummy; } ;
struct port_if {int dummy; } ;
struct port_comm {struct port_comm* next; int /*<<< orphan*/  cp; } ;
struct TYPE_2__ {int tv_sec; int tv_usec; } ;
struct outside_network {size_t num_tcp; size_t unwanted_threshold; void (* unwanted_action ) (void*) ;int use_caps_for_id; int do_udp; int tcp_mss; int delayclose; scalar_t__ num_ip4; scalar_t__ num_ip6; struct port_if* ip4_ifs; struct port_if* ip6_ifs; struct port_comm* unused_fds; int /*<<< orphan*/  udp_buff; struct comm_base* base; void* serviced; void* pending; TYPE_1__ delay_tv; void* unwanted_param; scalar_t__ want_to_quit; scalar_t__ svcd_overhead; struct dt_env* dtenv; void* sslctx; struct ub_randstate* rnd; struct infra_cache* infra; scalar_t__ num_tcp_outgoing; int /*<<< orphan*/  now_tv; int /*<<< orphan*/  now_secs; } ;
struct infra_cache {int dummy; } ;
struct dt_env {int dummy; } ;
struct comm_base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,int,int,int,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comm_base*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct comm_base*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct outside_network*) ; 
 int /*<<< orphan*/  FUNC4 (struct outside_network*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct port_comm*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  outnet_udp_cb ; 
 int /*<<< orphan*/  FUNC7 (struct outside_network*) ; 
 int /*<<< orphan*/  pending_cmp ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  serviced_cmp ; 
 int /*<<< orphan*/  FUNC9 (struct port_if*,char*,int*,int,size_t) ; 
 int /*<<< orphan*/  FUNC10 (size_t) ; 
 scalar_t__ FUNC11 (char*) ; 

struct outside_network* 
FUNC12(struct comm_base *base, size_t bufsize, 
	size_t num_ports, char** ifs, int num_ifs, int do_ip4, 
	int do_ip6, size_t num_tcp, struct infra_cache* infra,
	struct ub_randstate* rnd, int use_caps_for_id, int* availports, 
	int numavailports, size_t unwanted_threshold, int tcp_mss,
	void (*unwanted_action)(void*), void* unwanted_param, int do_udp,
	void* sslctx, int delayclose, struct dt_env* dtenv)
{
	struct outside_network* outnet = (struct outside_network*)
		FUNC1(1, sizeof(struct outside_network));
	size_t k;
	if(!outnet) {
		FUNC6("malloc failed");
		return NULL;
	}
	FUNC2(base, &outnet->now_secs, &outnet->now_tv);
	outnet->base = base;
	outnet->num_tcp = num_tcp;
	outnet->num_tcp_outgoing = 0;
	outnet->infra = infra;
	outnet->rnd = rnd;
	outnet->sslctx = sslctx;
#ifdef USE_DNSTAP
	outnet->dtenv = dtenv;
#else
	(void)dtenv;
#endif
	outnet->svcd_overhead = 0;
	outnet->want_to_quit = 0;
	outnet->unwanted_threshold = unwanted_threshold;
	outnet->unwanted_action = unwanted_action;
	outnet->unwanted_param = unwanted_param;
	outnet->use_caps_for_id = use_caps_for_id;
	outnet->do_udp = do_udp;
	outnet->tcp_mss = tcp_mss;
#ifndef S_SPLINT_S
	if(delayclose) {
		outnet->delayclose = 1;
		outnet->delay_tv.tv_sec = delayclose/1000;
		outnet->delay_tv.tv_usec = (delayclose%1000)*1000;
	}
#endif
	if(numavailports == 0 || num_ports == 0) {
		FUNC6("no outgoing ports available");
		FUNC7(outnet);
		return NULL;
	}
#ifndef INET6
	do_ip6 = 0;
#endif
	FUNC0(ifs, num_ifs, do_ip4, do_ip6, 
		&outnet->num_ip4, &outnet->num_ip6);
	if(outnet->num_ip4 != 0) {
		if(!(outnet->ip4_ifs = (struct port_if*)FUNC1(
			(size_t)outnet->num_ip4, sizeof(struct port_if)))) {
			FUNC6("malloc failed");
			FUNC7(outnet);
			return NULL;
		}
	}
	if(outnet->num_ip6 != 0) {
		if(!(outnet->ip6_ifs = (struct port_if*)FUNC1(
			(size_t)outnet->num_ip6, sizeof(struct port_if)))) {
			FUNC6("malloc failed");
			FUNC7(outnet);
			return NULL;
		}
	}
	if(	!(outnet->udp_buff = FUNC10(bufsize)) ||
		!(outnet->pending = FUNC8(pending_cmp)) ||
		!(outnet->serviced = FUNC8(serviced_cmp)) ||
		!FUNC4(outnet, bufsize)) {
		FUNC6("malloc failed");
		FUNC7(outnet);
		return NULL;
	}

	/* allocate commpoints */
	for(k=0; k<num_ports; k++) {
		struct port_comm* pc;
		pc = (struct port_comm*)FUNC1(1, sizeof(*pc));
		if(!pc) {
			FUNC6("malloc failed");
			FUNC7(outnet);
			return NULL;
		}
		pc->cp = FUNC3(outnet->base, -1, 
			outnet->udp_buff, outnet_udp_cb, outnet);
		if(!pc->cp) {
			FUNC6("malloc failed");
			FUNC5(pc);
			FUNC7(outnet);
			return NULL;
		}
		pc->next = outnet->unused_fds;
		outnet->unused_fds = pc;
	}

	/* allocate interfaces */
	if(num_ifs == 0) {
		if(do_ip4 && !FUNC9(&outnet->ip4_ifs[0], "0.0.0.0", 
			availports, numavailports, num_ports)) {
			FUNC6("malloc failed");
			FUNC7(outnet);
			return NULL;
		}
		if(do_ip6 && !FUNC9(&outnet->ip6_ifs[0], "::", 
			availports, numavailports, num_ports)) {
			FUNC6("malloc failed");
			FUNC7(outnet);
			return NULL;
		}
	} else {
		size_t done_4 = 0, done_6 = 0;
		int i;
		for(i=0; i<num_ifs; i++) {
			if(FUNC11(ifs[i]) && do_ip6) {
				if(!FUNC9(&outnet->ip6_ifs[done_6], ifs[i],
					availports, numavailports, num_ports)){
					FUNC6("malloc failed");
					FUNC7(outnet);
					return NULL;
				}
				done_6++;
			}
			if(!FUNC11(ifs[i]) && do_ip4) {
				if(!FUNC9(&outnet->ip4_ifs[done_4], ifs[i],
					availports, numavailports, num_ports)){
					FUNC6("malloc failed");
					FUNC7(outnet);
					return NULL;
				}
				done_4++;
			}
		}
	}
	return outnet;
}