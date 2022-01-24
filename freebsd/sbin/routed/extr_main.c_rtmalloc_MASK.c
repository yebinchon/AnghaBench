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
typedef  int /*<<< orphan*/  u_long ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,char const*) ; 
 void* FUNC1 (size_t) ; 

void *
FUNC2(size_t size,
	 const char *msg)
{
	void *p = FUNC1(size);
	if (p == NULL)
		FUNC0(1,"malloc(%lu) failed in %s", (u_long)size, msg);
	return p;
}