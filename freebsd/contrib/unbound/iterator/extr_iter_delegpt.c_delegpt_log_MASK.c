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
struct delegpt_ns {scalar_t__ done_pside6; scalar_t__ done_pside4; scalar_t__ lame; scalar_t__ got6; scalar_t__ got4; scalar_t__ resolved; int /*<<< orphan*/  name; struct delegpt_ns* next; } ;
struct delegpt_addr {char* tls_auth_name; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; scalar_t__ lame; scalar_t__ bogus; struct delegpt_addr* next_target; } ;
struct delegpt {struct delegpt_addr* target_list; scalar_t__ bogus; struct delegpt_ns* nslist; scalar_t__ has_parent_side_NS; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  s ;
typedef  enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 int VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct delegpt*,size_t*,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct delegpt*,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,...) ; 
 int verbosity ; 

void FUNC6(enum verbosity_value v, struct delegpt* dp)
{
	char buf[LDNS_MAX_DOMAINLEN+1];
	struct delegpt_ns* ns;
	struct delegpt_addr* a;
	size_t missing=0, numns=0, numaddr=0, numres=0, numavail=0;
	if(verbosity < v)
		return;
	FUNC2(dp->name, buf);
	if(dp->nslist == NULL && dp->target_list == NULL) {
		FUNC4("DelegationPoint<%s>: empty", buf);
		return;
	}
	FUNC1(dp, &numns, &missing);
	FUNC0(dp, &numaddr, &numres, &numavail);
	FUNC4("DelegationPoint<%s>: %u names (%u missing), "
		"%u addrs (%u result, %u avail)%s", 
		buf, (unsigned)numns, (unsigned)missing, 
		(unsigned)numaddr, (unsigned)numres, (unsigned)numavail,
		(dp->has_parent_side_NS?" parentNS":" cacheNS"));
	if(verbosity >= VERB_ALGO) {
		for(ns = dp->nslist; ns; ns = ns->next) {
			FUNC2(ns->name, buf);
			FUNC4("  %s %s%s%s%s%s%s%s", buf, 
			(ns->resolved?"*":""),
			(ns->got4?" A":""), (ns->got6?" AAAA":""),
			(dp->bogus?" BOGUS":""), (ns->lame?" PARENTSIDE":""),
			(ns->done_pside4?" PSIDE_A":""),
			(ns->done_pside6?" PSIDE_AAAA":""));
		}
		for(a = dp->target_list; a; a = a->next_target) {
			char s[128];
			const char* str = "  ";
			if(a->bogus && a->lame) str = "  BOGUS ADDR_LAME ";
			else if(a->bogus) str = "  BOGUS ";
			else if(a->lame) str = "  ADDR_LAME ";
			if(a->tls_auth_name)
				FUNC5(s, sizeof(s), "%s[%s]", str,
					a->tls_auth_name);
			else FUNC5(s, sizeof(s), "%s", str);
			FUNC3(VERB_ALGO, s, &a->addr, a->addrlen);
		}
	}
}