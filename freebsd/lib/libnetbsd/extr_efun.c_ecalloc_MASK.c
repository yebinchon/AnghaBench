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
 void* FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,size_t,size_t) ; 

void *
FUNC3(size_t n, size_t s)
{
	void *p = FUNC0(n, s);
	if (p == NULL && n != 0 && s != 0)
		FUNC1)(1, "Cannot allocate %zu blocks of size %zu", n, s);
	return p;
}