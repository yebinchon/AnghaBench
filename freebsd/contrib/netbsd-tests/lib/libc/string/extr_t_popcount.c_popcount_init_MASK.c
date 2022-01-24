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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__* byte_count ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static void
FUNC2(const char *cfg_var)
{
	unsigned int i, j;

	if (FUNC1(cfg_var, "YES")  == 0 ||
	    FUNC1(cfg_var, "Y")    == 0 ||
	    FUNC1(cfg_var, "1")    == 0 ||
	    FUNC1(cfg_var, "T")    == 0 ||
	    FUNC1(cfg_var, "TRUE") == 0) {
		for (i = 0; i < 256; ++i) {
			byte_count[i] = 0;
			for (j = i; j != 0; j >>= 1) {
				if (j & 1)
					++byte_count[i];
			}
		}
		return;
	}

	FUNC0("config variable \"run_popcount\" not set to YES/TRUE");
}