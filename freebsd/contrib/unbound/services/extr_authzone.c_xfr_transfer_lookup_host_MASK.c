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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct query_info {int qname_len; int /*<<< orphan*/ * local_alias; int /*<<< orphan*/  qtype; int /*<<< orphan*/  qclass; int /*<<< orphan*/ * qname; } ;
struct module_env {int /*<<< orphan*/  mesh; int /*<<< orphan*/ * scratch_buffer; } ;
struct edns_data {int edns_present; int udp_size; int /*<<< orphan*/ * opt_list; int /*<<< orphan*/  bits; scalar_t__ edns_version; scalar_t__ ext_rcode; } ;
struct auth_xfer {int /*<<< orphan*/  lock; int /*<<< orphan*/  name; TYPE_1__* task_transfer; int /*<<< orphan*/  dclass; } ;
struct auth_master {int /*<<< orphan*/  host; scalar_t__ allow_notify; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  dname ;
typedef  int /*<<< orphan*/  buf1 ;
struct TYPE_2__ {scalar_t__ lookup_aaaa; struct auth_master* lookup_target; } ;

/* Variables and functions */
 int BIT_RD ; 
 int /*<<< orphan*/  EDNS_DO ; 
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_AAAA ; 
 scalar_t__ VERB_ALGO ; 
 int /*<<< orphan*/  auth_xfer_transfer_lookup_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,struct query_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct query_info*,int,struct edns_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct auth_xfer*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static int
FUNC10(struct auth_xfer* xfr, struct module_env* env)
{
	struct sockaddr_storage addr;
	socklen_t addrlen = 0;
	struct auth_master* master = xfr->task_transfer->lookup_target;
	struct query_info qinfo;
	uint16_t qflags = BIT_RD;
	uint8_t dname[LDNS_MAX_DOMAINLEN+1];
	struct edns_data edns;
	sldns_buffer* buf = env->scratch_buffer;
	if(!master) return 0;
	if(FUNC1(master->host, &addr, &addrlen)) {
		/* not needed, host is in IP addr format */
		return 0;
	}
	if(master->allow_notify)
		return 0; /* allow-notifies are not transferred from, no
		lookup is needed */

	/* use mesh_new_callback to probe for non-addr hosts,
	 * and then wait for them to be looked up (in cache, or query) */
	qinfo.qname_len = sizeof(dname);
	if(FUNC8(master->host, dname, &qinfo.qname_len)
		!= 0) {
		FUNC4("cannot parse host name of master %s", master->host);
		return 0;
	}
	qinfo.qname = dname;
	qinfo.qclass = xfr->dclass;
	qinfo.qtype = LDNS_RR_TYPE_A;
	if(xfr->task_transfer->lookup_aaaa)
		qinfo.qtype = LDNS_RR_TYPE_AAAA;
	qinfo.local_alias = NULL;
	if(verbosity >= VERB_ALGO) {
		char buf1[512];
		char buf2[LDNS_MAX_DOMAINLEN+1];
		FUNC0(xfr->name, buf2);
		FUNC9(buf1, sizeof(buf1), "auth zone %s: master lookup"
			" for task_transfer", buf2);
		FUNC5(VERB_ALGO, buf1, &qinfo);
	}
	edns.edns_present = 1;
	edns.ext_rcode = 0;
	edns.edns_version = 0;
	edns.bits = EDNS_DO;
	edns.opt_list = NULL;
	if(FUNC7(buf) < 65535)
		edns.udp_size = (uint16_t)FUNC7(buf);
	else	edns.udp_size = 65535;

	/* unlock xfr during mesh_new_callback() because the callback can be
	 * called straight away */
	FUNC3(&xfr->lock);
	if(!FUNC6(env->mesh, &qinfo, qflags, &edns, buf, 0,
		&auth_xfer_transfer_lookup_callback, xfr)) {
		FUNC2(&xfr->lock);
		FUNC4("out of memory lookup up master %s", master->host);
		return 0;
	}
	FUNC2(&xfr->lock);
	return 1;
}