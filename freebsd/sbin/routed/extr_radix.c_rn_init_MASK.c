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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char* addmask_key ; 
 int /*<<< orphan*/  mask_rnhead ; 
 int max_keylen ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* rn_ones ; 
 char* rn_zeros ; 
 scalar_t__ FUNC4 (int,char*) ; 

void
FUNC5(void)
{
	char *cp, *cplim;
	if (max_keylen == 0) {
		FUNC2("rn_init: radix functions require max_keylen be set\n");
		return;
	}
	rn_zeros = (char *)FUNC4(3 * max_keylen, "rn_init");
	FUNC0(rn_zeros, 3 * max_keylen);
	rn_ones = cp = rn_zeros + max_keylen;
	addmask_key = cplim = rn_ones + max_keylen;
	while (cp < cplim)
		*cp++ = -1;
	if (FUNC3(&mask_rnhead, 0) == 0)
		FUNC1("rn_init 2");
}