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
 int /*<<< orphan*/  FUNC2 (struct ub_ctx*) ; 
 scalar_t__ verb ; 

__attribute__((used)) static void
FUNC3(struct ub_ctx* ctx, const char* str, const char* str2)
{
	FUNC2(ctx);
	if(str && str2 && verb) FUNC1("%s: %s\n", str, str2);
	if(verb) FUNC1("error: could not create unbound resolver context\n");
	FUNC0(0);
}