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
typedef  int /*<<< orphan*/  seclevel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  securelevel_name ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(void)
{
	int seclevel;
	size_t len = sizeof(seclevel);

	if (FUNC1(securelevel_name, &seclevel, &len, NULL, 0) != 0)
		FUNC0("failed to read %s", securelevel_name);

	return seclevel <= 0;
}