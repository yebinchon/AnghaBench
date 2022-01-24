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
 int /*<<< orphan*/  HASHTABLESIZE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* hwhashtable ; 
 void* iphashtable ; 
 void* nmhashtable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void
FUNC3()
{
	hwhashtable = FUNC1(HASHTABLESIZE);
	iphashtable = FUNC1(HASHTABLESIZE);
	nmhashtable = FUNC1(HASHTABLESIZE);
	if (!(hwhashtable && iphashtable && nmhashtable)) {
		FUNC2(LOG_ERR, "Unable to allocate hash tables.");
		FUNC0(1);
	}
}