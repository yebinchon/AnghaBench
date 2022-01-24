#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
struct module_env {int dummy; } ;
struct edns_data {int bits; scalar_t__ ext_rcode; int /*<<< orphan*/  udp_size; int /*<<< orphan*/  edns_version; } ;
struct dns_msg {TYPE_1__* rep; } ;
struct comm_reply {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int BIT_AA ; 
 int /*<<< orphan*/  EDNS_ADVERTISED_SIZE ; 
 int /*<<< orphan*/  EDNS_ADVERTISED_VERSION ; 
 int EDNS_DO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int LDNS_RCODE_SERVFAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct edns_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct module_env*,struct query_info*,int /*<<< orphan*/ *,TYPE_1__*,int,struct edns_data*,struct comm_reply*,struct regional*) ; 
 int /*<<< orphan*/  FUNC3 (struct query_info*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct regional*,int /*<<< orphan*/ ,struct edns_data*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6(struct query_info* qinfo, struct module_env* env,
	struct edns_data* edns, struct comm_reply* repinfo, sldns_buffer* buf,
	struct regional* temp, struct dns_msg* msg)
{
	uint16_t udpsize;
	udpsize = edns->udp_size;
	edns->edns_version = EDNS_ADVERTISED_VERSION;
	edns->udp_size = EDNS_ADVERTISED_SIZE;
	edns->ext_rcode = 0;
	edns->bits &= EDNS_DO;

	if(!FUNC2(env, qinfo, NULL, msg->rep,
		(int)FUNC0(msg->rep->flags), edns, repinfo, temp)
		|| !FUNC3(qinfo, msg->rep,
		*(uint16_t*)FUNC4(buf),
		FUNC5(buf, 2),
		buf, 0, 0, temp, udpsize, edns,
		(int)(edns->bits&EDNS_DO), 0)) {
		FUNC1(buf, (LDNS_RCODE_SERVFAIL|BIT_AA), qinfo,
			*(uint16_t*)FUNC4(buf),
			FUNC5(buf, 2), edns);
	}
}