#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct resp_addr {scalar_t__ action; TYPE_4__* data; TYPE_1__ node; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {int dummy; } ;
typedef  int /*<<< orphan*/  rr ;
typedef  int /*<<< orphan*/  bufshort ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {struct packed_rrset_data* data; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_8__ {TYPE_3__ entry; TYPE_2__ rk; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int LDNS_RR_BUF_SIZE ; 
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 TYPE_4__* FUNC3 (struct regional*,scalar_t__,scalar_t__) ; 
 scalar_t__ respip_inform_redirect ; 
 scalar_t__ respip_redirect ; 
 int FUNC4 (struct regional*,struct packed_rrset_data*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ **,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC6 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC8(struct regional* region, struct resp_addr* raddr,
		const char* rrstr, const char* netblock)
{
	uint8_t* nm;
	uint16_t rrtype = 0, rrclass = 0;
	time_t ttl = 0;
	uint8_t rr[LDNS_RR_BUF_SIZE];
	uint8_t* rdata = NULL;
	size_t rdata_len = 0;
	char buf[65536];
	char bufshort[64];
	struct packed_rrset_data* pd;
	struct sockaddr* sa;
	int ret;
	if(raddr->action != respip_redirect
		&& raddr->action != respip_inform_redirect) {
		FUNC2("cannot parse response-ip-data %s: response-ip "
			"action for %s is not redirect", rrstr, netblock);
		return 0;
	}
	ret = FUNC6(buf, sizeof(buf), ". %s", rrstr);
	if(ret < 0 || ret >= (int)sizeof(buf)) {
		FUNC7(bufshort, rrstr, sizeof(bufshort));
		FUNC2("bad response-ip-data: %s...", bufshort);
		return 0;
	}
	if(!FUNC5(buf, &nm, &rrtype, &rrclass, &ttl, rr, sizeof(rr),
		&rdata, &rdata_len)) {
		FUNC2("bad response-ip-data: %s", rrstr);
		return 0;
	}
	FUNC0(nm);
	sa = (struct sockaddr*)&raddr->node.addr;
	if (rrtype == LDNS_RR_TYPE_CNAME && raddr->data) {
		FUNC2("CNAME response-ip data (%s) can not co-exist with other "
			"response-ip data for netblock %s", rrstr, netblock);
		return 0;
	} else if (raddr->data &&
		raddr->data->rk.type == FUNC1(LDNS_RR_TYPE_CNAME)) {
		FUNC2("response-ip data (%s) can not be added; CNAME response-ip "
			"data already in place for netblock %s", rrstr, netblock);
		return 0;
	} else if((rrtype != LDNS_RR_TYPE_CNAME) &&
		((sa->sa_family == AF_INET && rrtype != LDNS_RR_TYPE_A) ||
		(sa->sa_family == AF_INET6 && rrtype != LDNS_RR_TYPE_AAAA))) {
		FUNC2("response-ip data %s record type does not correspond "
			"to netblock %s address family", rrstr, netblock);
		return 0;
	}

	if(!raddr->data) {
		raddr->data = FUNC3(region, rrtype, rrclass);
		if(!raddr->data)
			return 0;
	}
	pd = raddr->data->entry.data;
	return FUNC4(region, pd, rdata, rdata_len, ttl, rrstr);
}