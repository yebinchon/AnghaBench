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
 int /*<<< orphan*/  FUNC0 (struct ub_ctx*,char const*) ; 
 struct ub_ctx* FUNC1 (char const*,char const*,char const*,int,int) ; 
 struct ub_result* FUNC2 (struct ub_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ub_ctx*) ; 

__attribute__((used)) static struct ub_result *
FUNC4(const char* root_anchor_file, const char* res_conf,
	const char* root_hints, const char* debugconf,
	int ip4only, int ip6only)
{
	struct ub_ctx* ctx;
	struct ub_result* dnskey;

	ctx = FUNC1(res_conf, root_hints, debugconf,
		ip4only, ip6only);
	FUNC0(ctx, root_anchor_file);
	dnskey = FUNC2(ctx);
	FUNC3(ctx);
	return dnskey;
}