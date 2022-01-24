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
 int /*<<< orphan*/  FUNC0 (int,char*,size_t) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 

__attribute__((used)) static void *
FUNC3(void *text, size_t len)
{
	void *p;

	if ((p = FUNC1(len)) == NULL)
		FUNC0(1, "Cannot allocate %zu bytes", len);
	(void)FUNC2(p, text, len);
	return p;
}