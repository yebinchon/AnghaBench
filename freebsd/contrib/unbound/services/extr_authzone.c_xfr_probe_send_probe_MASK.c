#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int dummy; } ;
struct module_env {int /*<<< orphan*/  scratch_buffer; int /*<<< orphan*/  worker_base; int /*<<< orphan*/  outnet; int /*<<< orphan*/  rnd; TYPE_2__* cfg; } ;
struct auth_xfer {TYPE_3__* task_probe; int /*<<< orphan*/  name; } ;
struct auth_master {int /*<<< orphan*/  host; scalar_t__ http; scalar_t__ allow_notify; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  as ;
struct TYPE_6__ {int cp_is_ip6; int timeout; scalar_t__ timer; int /*<<< orphan*/ * cp; scalar_t__ id; TYPE_1__* scan_addr; } ;
struct TYPE_5__ {scalar_t__ ssl_port; int /*<<< orphan*/  port; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  addrlen; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int AUTH_PROBE_TIMEOUT ; 
 scalar_t__ VERB_ALGO ; 
 scalar_t__ FUNC0 (struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_storage*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  auth_xfer_probe_timer_callback ; 
 int /*<<< orphan*/  auth_xfer_probe_udp_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct timeval*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_storage*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (void*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct auth_xfer*,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,char*,char*,char*) ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC15 (struct auth_xfer*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct auth_master* FUNC16 (struct auth_xfer*) ; 

__attribute__((used)) static int
FUNC17(struct auth_xfer* xfr, struct module_env* env,
	int timeout)
{
	struct sockaddr_storage addr;
	socklen_t addrlen = 0;
	struct timeval t;
	/* pick master */
	struct auth_master* master = FUNC16(xfr);
	char *auth_name = NULL;
	if(!master) return 0;
	if(master->allow_notify) return 0; /* only for notify */
	if(master->http) return 0; /* only masters get SOA UDP probe,
		not urls, if those are in this list */

	/* get master addr */
	if(xfr->task_probe->scan_addr) {
		addrlen = xfr->task_probe->scan_addr->addrlen;
		FUNC10(&addr, &xfr->task_probe->scan_addr->addr, addrlen);
	} else {
		if(!FUNC2(master->host, &addr, &addrlen, &auth_name)) {
			/* the ones that are not in addr format are supposed
			 * to be looked up.  The lookup has failed however,
			 * so skip them */
			char zname[255+1];
			FUNC7(xfr->name, zname);
			FUNC9("%s: failed lookup, cannot probe to master %s",
				zname, master->host);
			return 0;
		}
		if (auth_name != NULL) {
			if (addr.ss_family == AF_INET
			&&  FUNC11(((struct sockaddr_in *)&addr)->sin_port)
		            == env->cfg->ssl_port)
				((struct sockaddr_in *)&addr)->sin_port
					= FUNC8(env->cfg->port);
			else if (addr.ss_family == AF_INET6
			&&  FUNC11(((struct sockaddr_in6 *)&addr)->sin6_port)
		            == env->cfg->ssl_port)
                        	((struct sockaddr_in6 *)&addr)->sin6_port
					= FUNC8(env->cfg->port);
		}
	}

	/* create packet */
	/* create new ID for new probes, but not on timeout retries,
	 * this means we'll accept replies to previous retries to same ip */
	if(timeout == AUTH_PROBE_TIMEOUT)
		xfr->task_probe->id = (uint16_t)(FUNC13(env->rnd)&0xffff);
	FUNC15(xfr, env->scratch_buffer, 
		xfr->task_probe->id);
	/* we need to remove the cp if we have a different ip4/ip6 type now */
	if(xfr->task_probe->cp &&
		((xfr->task_probe->cp_is_ip6 && !FUNC0(&addr, addrlen)) ||
		(!xfr->task_probe->cp_is_ip6 && FUNC0(&addr, addrlen)))
		) {
		FUNC3(xfr->task_probe->cp);
		xfr->task_probe->cp = NULL;
	}
	if(!xfr->task_probe->cp) {
		if(FUNC0(&addr, addrlen))
			xfr->task_probe->cp_is_ip6 = 1;
		else 	xfr->task_probe->cp_is_ip6 = 0;
		xfr->task_probe->cp = FUNC12(env->outnet,
			auth_xfer_probe_udp_callback, xfr, &addr, addrlen);
		if(!xfr->task_probe->cp) {
			char zname[255+1], as[256];
			FUNC7(xfr->name, zname);
			FUNC1(&addr, addrlen, as, sizeof(as));
			FUNC14(VERB_ALGO, "cannot create udp cp for "
				"probe %s to %s", zname, as);
			return 0;
		}
	}
	if(!xfr->task_probe->timer) {
		xfr->task_probe->timer = FUNC5(env->worker_base,
			auth_xfer_probe_timer_callback, xfr);
		if(!xfr->task_probe->timer) {
			FUNC9("malloc failure");
			return 0;
		}
	}

	/* send udp packet */
	if(!FUNC4(xfr->task_probe->cp, env->scratch_buffer,
		(struct sockaddr*)&addr, addrlen)) {
		char zname[255+1], as[256];
		FUNC7(xfr->name, zname);
		FUNC1(&addr, addrlen, as, sizeof(as));
		FUNC14(VERB_ALGO, "failed to send soa probe for %s to %s",
			zname, as);
		return 0;
	}
	if(verbosity >= VERB_ALGO) {
		char zname[255+1], as[256];
		FUNC7(xfr->name, zname);
		FUNC1(&addr, addrlen, as, sizeof(as));
		FUNC14(VERB_ALGO, "auth zone %s soa probe sent to %s", zname,
			as);
	}
	xfr->task_probe->timeout = timeout;
#ifndef S_SPLINT_S
	t.tv_sec = timeout/1000;
	t.tv_usec = (timeout%1000)*1000;
#endif
	FUNC6(xfr->task_probe->timer, &t);

	return 1;
}