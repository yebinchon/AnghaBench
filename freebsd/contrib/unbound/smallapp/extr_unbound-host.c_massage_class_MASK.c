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
 int LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(const char* c)
{
	if(c) {
		int r = FUNC2(c);
		if(r == 0 && FUNC3(c, "CLASS0") != 0 && 
			FUNC4(c, "") != 0) {
			FUNC1(stderr, "error unknown class %s\n", c);
			FUNC0(1);
		}
		return r;
	}
	return LDNS_RR_CLASS_IN;
}