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
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; void* sin6_port; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; void* sin_port; int /*<<< orphan*/  sin_family; } ;
struct packed_rrset_data {size_t count; int* rr_len; int /*<<< orphan*/ ** rr_data; } ;
struct auth_master {struct auth_addr* list; int /*<<< orphan*/  host; } ;
struct auth_addr {struct auth_addr* next; void* addrlen; int /*<<< orphan*/  addr; } ;
typedef  void* socklen_t ;
typedef  int /*<<< orphan*/  s ;
typedef  void* in_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 size_t INET6_SIZE ; 
 size_t INET_SIZE ; 
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 int /*<<< orphan*/  UNBOUND_DNS_PORT ; 
 scalar_t__ VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,char*,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void
FUNC6(struct auth_master* m, struct ub_packed_rrset_key* rrset,
	uint16_t rrtype)
{
	size_t i;
	struct packed_rrset_data* data;
	if(!m || !rrset) return;
	if(rrtype != LDNS_RR_TYPE_A && rrtype != LDNS_RR_TYPE_AAAA)
		return;
	data = (struct packed_rrset_data*)rrset->entry.data;
	for(i=0; i<data->count; i++) {
		struct auth_addr* a;
		size_t len = data->rr_len[i] - 2;
		uint8_t* rdata = data->rr_data[i]+2;
		if(rrtype == LDNS_RR_TYPE_A && len != INET_SIZE)
			continue; /* wrong length for A */
		if(rrtype == LDNS_RR_TYPE_AAAA && len != INET6_SIZE)
			continue; /* wrong length for AAAA */
		
		/* add and alloc it */
		a = (struct auth_addr*)FUNC1(1, sizeof(*a));
		if(!a) {
			FUNC3("out of memory");
			return;
		}
		if(rrtype == LDNS_RR_TYPE_A) {
			struct sockaddr_in* sa;
			a->addrlen = (socklen_t)sizeof(*sa);
			sa = (struct sockaddr_in*)&a->addr;
			sa->sin_family = AF_INET;
			sa->sin_port = (in_port_t)FUNC2(UNBOUND_DNS_PORT);
			FUNC4(&sa->sin_addr, rdata, INET_SIZE);
		} else {
			struct sockaddr_in6* sa;
			a->addrlen = (socklen_t)sizeof(*sa);
			sa = (struct sockaddr_in6*)&a->addr;
			sa->sin6_family = AF_INET6;
			sa->sin6_port = (in_port_t)FUNC2(UNBOUND_DNS_PORT);
			FUNC4(&sa->sin6_addr, rdata, INET6_SIZE);
		}
		if(verbosity >= VERB_ALGO) {
			char s[64];
			FUNC0(&a->addr, a->addrlen, s, sizeof(s));
			FUNC5(VERB_ALGO, "auth host %s lookup %s",
				m->host, s);
		}
		/* append to list */
		a->next = m->list;
		m->list = a;
	}
}