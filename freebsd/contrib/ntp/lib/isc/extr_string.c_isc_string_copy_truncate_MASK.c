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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 size_t FUNC3 (char*) ; 

void
FUNC4(char *target, size_t size, const char *source) {
	FUNC1(size > 0U);

	FUNC2(target, source, size);

	FUNC0(FUNC3(target) < size);
}