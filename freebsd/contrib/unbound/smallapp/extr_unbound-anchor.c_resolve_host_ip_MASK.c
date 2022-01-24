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
struct ub_result {int /*<<< orphan*/ * len; scalar_t__* data; scalar_t__ rcode; int /*<<< orphan*/  havedata; } ;
struct ub_ctx {int dummy; } ;
struct ip_list {struct ip_list* next; } ;

/* Variables and functions */
 int LDNS_RR_TYPE_A ; 
 struct ip_list* FUNC0 (int,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ub_ctx*) ; 
 int FUNC4 (struct ub_ctx*,char const*,int,int,struct ub_result**) ; 
 int /*<<< orphan*/  FUNC5 (struct ub_result*) ; 
 char* FUNC6 (int) ; 
 scalar_t__ verb ; 

__attribute__((used)) static void
FUNC7(struct ub_ctx* ctx, const char* host, int port, int tp, int cl,
	struct ip_list** head)
{
	struct ub_result* res = NULL;
	int r;
	int i;

	r = FUNC4(ctx, host, tp, cl, &res);
	if(r) {
		if(verb) FUNC2("error: resolve %s %s: %s\n", host,
			(tp==LDNS_RR_TYPE_A)?"A":"AAAA", FUNC6(r));
		return;
	}
	if(!res) {
		if(verb) FUNC2("out of memory\n");
		FUNC3(ctx);
		FUNC1(0);
	}
	if(!res->havedata || res->rcode || !res->data) {
		if(verb) FUNC2("resolve %s %s: no result\n", host,
			(tp==LDNS_RR_TYPE_A)?"A":"AAAA");
		return;
	}
	for(i = 0; res->data[i]; i++) {
		struct ip_list* ip = FUNC0(tp, res->data[i], res->len[i],
			port);
		if(!ip) continue;
		ip->next = *head;
		*head = ip;
	}
	FUNC5(res);
}