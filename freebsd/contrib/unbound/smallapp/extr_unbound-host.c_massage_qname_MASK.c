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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char const*,char**) ; 
 scalar_t__ FUNC3 (char const*,char**) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static char*
FUNC5(const char* nm, int* reverse)
{
	/* recognise IP4 and IP6, create reverse addresses if needed */
	char* res;
	if(FUNC2(nm, &res)) {
		*reverse = 1;
	} else if(FUNC3(nm, &res)) {
		*reverse = 1;
	} else {
		res = FUNC4(nm);
	}
	if(!res) {
		FUNC1(stderr, "error: out of memory\n");
		FUNC0(1);
	}
	return res;
}