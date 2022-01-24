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
 void* FUNC0 (void*) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t) ; 

void
FUNC4(void *addr, size_t size) {
	FUNC2(FUNC0(addr) == addr);
	FUNC2(FUNC1(size) == size);

	FUNC3(addr, size);
}