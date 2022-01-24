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
 int FALSE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRACE_DATABASE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 

__attribute__((used)) static bool
FUNC5(char *s, char *attr)
{
    if (s != 0) {
	if (FUNC0(attr)) {
	    size_t len_s = FUNC3(s);
	    size_t len_a = FUNC3(attr);

	    if (len_s > len_a && !FUNC4(attr, s, len_a)) {
		unsigned n;
		FUNC1(TRACE_DATABASE, ("rewrite:\n\t%s", s));
		for (n = 0; n < len_s - len_a; ++n) {
		    s[n] = s[n + len_a];
		}
		FUNC2(s + n, attr, FUNC3(s) + 1);
		FUNC1(TRACE_DATABASE, ("to:\n\t%s", s));
	    }
	}
	return TRUE;
    }
    return FALSE;		/* oops */
}