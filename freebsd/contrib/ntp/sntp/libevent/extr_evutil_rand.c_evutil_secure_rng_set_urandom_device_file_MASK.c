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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* arc4random_urandom_filename ; 

int
FUNC2(char *fname)
{
#ifdef TRY_SEED_URANDOM
	ARC4_LOCK_();
	arc4random_urandom_filename = fname;
	ARC4_UNLOCK_();
#endif
	return 0;
}