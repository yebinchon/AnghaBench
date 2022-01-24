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
struct ub_ctx {int dummy; } ;
struct ip_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_AAAA ; 
 struct ub_ctx* FUNC0 (char const*,char const*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ip_list* FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ub_ctx*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_list**) ; 
 int /*<<< orphan*/  FUNC5 (struct ub_ctx*) ; 
 scalar_t__ verb ; 

__attribute__((used)) static struct ip_list*
FUNC6(const char* host, int port, const char* res_conf,
	const char* root_hints, const char* debugconf, int ip4only, int ip6only)
{
	struct ub_ctx* ctx;
	struct ip_list* list = NULL;
	/* first see if name is an IP address itself */
	if( (list=FUNC2(host, port)) ) {
		return list;
	}
	
	/* create resolver context */
	ctx = FUNC0(res_conf, root_hints, debugconf,
        	ip4only, ip6only);

	/* try resolution of A */
	if(!ip6only) {
		FUNC4(ctx, host, port, LDNS_RR_TYPE_A,
			LDNS_RR_CLASS_IN, &list);
	}

	/* try resolution of AAAA */
	if(!ip4only) {
		FUNC4(ctx, host, port, LDNS_RR_TYPE_AAAA,
			LDNS_RR_CLASS_IN, &list);
	}

	FUNC5(ctx);
	if(!list) {
		if(verb) FUNC3("%s has no IP addresses I can use\n", host);
		FUNC1(0);
	}
	return list;
}