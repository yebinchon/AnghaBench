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
 int /*<<< orphan*/  RTLD_LAZY ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void *
FUNC4(void *arg)
{
	void *dso;
	if ((dso = FUNC1(arg, RTLD_LAZY)) == NULL) {
		FUNC3(stderr, "opening %s failed\n", (char *)arg);
		FUNC2(1);
	}
	FUNC0(dso);
	return NULL;
}