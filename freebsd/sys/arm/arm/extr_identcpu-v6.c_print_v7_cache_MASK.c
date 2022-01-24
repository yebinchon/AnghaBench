#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  clidr; } ;

/* Variables and functions */
 scalar_t__ CACHE_DCACHE ; 
 scalar_t__ CACHE_ICACHE ; 
 scalar_t__ CACHE_SEP_CACHE ; 
 scalar_t__ CACHE_UNI_CACHE ; 
 scalar_t__ CPUV7_CT_CTYPE_RA ; 
 scalar_t__ CPUV7_CT_CTYPE_WA ; 
 scalar_t__ CPUV7_CT_CTYPE_WB ; 
 scalar_t__ CPUV7_CT_CTYPE_WT ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_1__ cpuinfo ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static void
FUNC10(void )
{
	uint32_t type, val, size, sets, ways, linesize;
	int i;

	FUNC9("LoUU:%d LoC:%d LoUIS:%d \n",
	    FUNC6(cpuinfo.clidr) + 1,
	    FUNC4(cpuinfo.clidr) + 1,
	    FUNC5(cpuinfo.clidr) + 1);

	for (i = 0; i < 7; i++) {
		type = FUNC3(cpuinfo.clidr, i);
		if (type == 0)
			break;
		FUNC9("Cache level %d:\n", i + 1);
		if (type == CACHE_DCACHE || type == CACHE_UNI_CACHE ||
		    type == CACHE_SEP_CACHE) {
			FUNC8(i << 1);
			val = FUNC7();
			ways = FUNC0(val) + 1;
			sets = FUNC2(val) + 1;
			linesize = 1 << (FUNC1(val) + 4);
			size = (ways * sets * linesize) / 1024;

			if (type == CACHE_UNI_CACHE)
				FUNC9(" %dKB/%dB %d-way unified cache",
				    size, linesize,ways);
			else
				FUNC9(" %dKB/%dB %d-way data cache",
				    size, linesize, ways);
			if (val & CPUV7_CT_CTYPE_WT)
				FUNC9(" WT");
			if (val & CPUV7_CT_CTYPE_WB)
				FUNC9(" WB");
				if (val & CPUV7_CT_CTYPE_RA)
				FUNC9(" Read-Alloc");
			if (val & CPUV7_CT_CTYPE_WA)
				FUNC9(" Write-Alloc");
			FUNC9("\n");
		}

		if (type == CACHE_ICACHE || type == CACHE_SEP_CACHE) {
			FUNC8(i << 1 | 1);
			val = FUNC7();
			ways = FUNC0(val) + 1;
			sets = FUNC2(val) + 1;
			linesize = 1 << (FUNC1(val) + 4);
			size = (ways * sets * linesize) / 1024;
				FUNC9(" %dKB/%dB %d-way instruction cache",
			    size, linesize, ways);
			if (val & CPUV7_CT_CTYPE_WT)
				FUNC9(" WT");
			if (val & CPUV7_CT_CTYPE_WB)
				FUNC9(" WB");
			if (val & CPUV7_CT_CTYPE_RA)
				FUNC9(" Read-Alloc");
			if (val & CPUV7_CT_CTYPE_WA)
				FUNC9(" Write-Alloc");
			FUNC9("\n");
		}
	}
	FUNC8(0);
}