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
struct disklabel {int /*<<< orphan*/  d_packname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 struct disklabel* FUNC2 (char const*) ; 
 struct disklabel* FUNC3 () ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static void
FUNC5(const char *type, struct disklabel *lp)
{
	struct disklabel *dp;

	if (FUNC4(type, "auto") == 0)
		dp = FUNC3();
	else
		dp = FUNC2(type);
	if (dp == NULL)
		FUNC1(1, "%s: unknown disk type", type);
	*lp = *dp;
	FUNC0(lp->d_packname, sizeof(lp->d_packname));
}