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
struct ub_result {int dummy; } ;
struct ub_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ub_ctx*) ; 
 int FUNC3 (struct ub_ctx*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ub_result**) ; 
 char* FUNC4 (int) ; 
 scalar_t__ verb ; 

__attribute__((used)) static struct ub_result*
FUNC5(struct ub_ctx* ctx)
{
	struct ub_result* res = NULL;
	int r;
	r = FUNC3(ctx, ".", LDNS_RR_TYPE_DNSKEY, LDNS_RR_CLASS_IN, &res);
	if(r) {
		if(verb) FUNC1("resolve DNSKEY: %s\n", FUNC4(r));
		FUNC2(ctx);
		FUNC0(0);
	}
	if(!res) {
		if(verb) FUNC1("out of memory\n");
		FUNC2(ctx);
		FUNC0(0);
	}
	return res;
}