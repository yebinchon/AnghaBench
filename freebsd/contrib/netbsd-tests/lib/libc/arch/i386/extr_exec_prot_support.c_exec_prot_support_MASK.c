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
typedef  int /*<<< orphan*/  pae ;

/* Variables and functions */
 int PARTIAL_XP ; 
 int PERPAGE_XP ; 
 int FUNC0 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 

int
FUNC2(void)
{
	int pae;
	size_t pae_len = sizeof(pae);

	if (FUNC0("machdep.pae", &pae, &pae_len, NULL, 0) == -1)
		return PARTIAL_XP;

	if (pae == 1) {
		if (FUNC1("cpuctl identify 0 | grep -q NOX") == 0 ||
		    FUNC1("cpuctl identify 0 | grep -q XD") == 0)
			return PERPAGE_XP;
	}
	
	return PARTIAL_XP;
}