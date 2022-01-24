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
 scalar_t__ FUNC0 (char const*) ; 
 char const* arc4random_urandom_filename ; 

__attribute__((used)) static int
FUNC1(void)
{
	/* This is adapted from Tor's crypto_seed_rng() */
	static const char *filenames[] = {
		"/dev/srandom", "/dev/urandom", "/dev/random", NULL
	};
	int i;
	if (arc4random_urandom_filename)
		return FUNC0(arc4random_urandom_filename);

	for (i = 0; filenames[i]; ++i) {
		if (FUNC0(filenames[i]) == 0) {
			return 0;
		}
	}

	return -1;
}