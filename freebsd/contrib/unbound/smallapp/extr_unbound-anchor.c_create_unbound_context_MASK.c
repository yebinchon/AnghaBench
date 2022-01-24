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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct ub_ctx*,char const*) ; 
 struct ub_ctx* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ub_ctx*,char const*,char*) ; 
 int FUNC5 (struct ub_ctx*,char const*) ; 
 int FUNC6 (struct ub_ctx*,char*,char const*) ; 
 char* FUNC7 (int) ; 
 scalar_t__ verb ; 

__attribute__((used)) static struct ub_ctx* 
FUNC8(const char* res_conf, const char* root_hints,
	const char* debugconf, int ip4only, int ip6only)
{
	int r;
	struct ub_ctx* ctx = FUNC3();
	if(!ctx) {
		if(verb) FUNC1("out of memory\n");
		FUNC0(0);
	}
	/* do not waste time and network traffic to fetch extra nameservers */
	r = FUNC6(ctx, "target-fetch-policy:", "0 0 0 0 0");
	if(r && verb) FUNC1("ctx targetfetchpolicy: %s\n", FUNC7(r));
	/* read config file first, so its settings can be overridden */
	if(debugconf) {
		r = FUNC2(ctx, debugconf);
		if(r) FUNC4(ctx, debugconf, FUNC7(r));
	}
	if(res_conf) {
		r = FUNC5(ctx, res_conf);
		if(r) FUNC4(ctx, res_conf, FUNC7(r));
	}
	if(root_hints) {
		r = FUNC6(ctx, "root-hints:", root_hints);
		if(r) FUNC4(ctx, root_hints, FUNC7(r));
	}
	if(ip4only) {
		r = FUNC6(ctx, "do-ip6:", "no");
		if(r) FUNC4(ctx, "ip4only", FUNC7(r));
	}
	if(ip6only) {
		r = FUNC6(ctx, "do-ip4:", "no");
		if(r) FUNC4(ctx, "ip6only", FUNC7(r));
	}
	return ctx;
}