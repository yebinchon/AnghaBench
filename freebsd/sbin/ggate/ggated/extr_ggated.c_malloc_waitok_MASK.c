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
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void *
FUNC3(size_t size)
{
	void *p;

	while ((p = FUNC1(size)) == NULL) {
		FUNC0(LOG_DEBUG, "Cannot allocate %zu bytes.", size);
		FUNC2(1);
	}
	return (p);
}