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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ub_ctx*) ; 
 int FUNC3 (struct ub_ctx*,char*,char const*) ; 
 char* FUNC4 (int) ; 
 scalar_t__ verb ; 

__attribute__((used)) static void
FUNC5(struct ub_ctx* ctx, const char* root_anchor_file)
{
	int r;
	r = FUNC3(ctx, "auto-trust-anchor-file:", root_anchor_file);
	if(r) {
		if(verb) FUNC1("add 5011 probe to ctx: %s\n", FUNC4(r));
		FUNC2(ctx);
		FUNC0(0);
	}
}