#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
struct module_env {int dummy; } ;
struct edns_data {int /*<<< orphan*/ * opt_list; int /*<<< orphan*/  bits; scalar_t__ ext_rcode; int /*<<< orphan*/  udp_size; int /*<<< orphan*/  edns_version; } ;
struct comm_reply {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int BIT_AA ; 
 int /*<<< orphan*/  EDNS_ADVERTISED_SIZE ; 
 int /*<<< orphan*/  EDNS_ADVERTISED_VERSION ; 
 int /*<<< orphan*/  EDNS_DO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct edns_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct module_env*,struct query_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct edns_data*,struct comm_reply*,struct regional*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct query_info* qinfo, struct module_env* env,
	struct edns_data* edns, struct comm_reply* repinfo, sldns_buffer* buf,
	struct regional* temp, int rcode)
{
	edns->edns_version = EDNS_ADVERTISED_VERSION;
	edns->udp_size = EDNS_ADVERTISED_SIZE;
	edns->ext_rcode = 0;
	edns->bits &= EDNS_DO;

	if(!FUNC1(env, qinfo, NULL, NULL,
		rcode, edns, repinfo, temp))
		edns->opt_list = NULL;
	FUNC0(buf, rcode|BIT_AA, qinfo,
		*(uint16_t*)FUNC2(buf),
		FUNC3(buf, 2), edns);
}