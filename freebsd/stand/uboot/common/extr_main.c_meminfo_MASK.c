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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
struct sys_info {int dummy; } ;

/* Variables and functions */
 int MR_ATTR_DRAM ; 
 int MR_ATTR_FLASH ; 
 int MR_ATTR_SRAM ; 
 int FUNC0 (struct sys_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 struct sys_info* FUNC3 () ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(void)
{
	uint64_t size;
	struct sys_info *si;
	int t[3] = { MR_ATTR_DRAM, MR_ATTR_FLASH, MR_ATTR_SRAM };
	int i;

	if ((si = FUNC3()) == NULL)
		FUNC1("could not retrieve system info");

	for (i = 0; i < 3; i++) {
		size = FUNC0(si, t[i]);
		if (size > 0)
			FUNC2("%s: %juMB\n", FUNC4(t[i]),
			    (uintmax_t)(size / 1024 / 1024));
	}
}