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
 int LDNS_RR_TYPE_A ; 
 int LDNS_RR_TYPE_PTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(const char* t, int reverse, int* multi)
{
	if(t) {
		int r = FUNC2(t);
		if(r == 0 && FUNC3(t, "TYPE0") != 0 && 
			FUNC4(t, "") != 0) {
			FUNC1(stderr, "error unknown type %s\n", t);
			FUNC0(1);
		}
		return r;
	}
	if(!t && reverse)
		return LDNS_RR_TYPE_PTR;
	*multi = 1;
	return LDNS_RR_TYPE_A;
}