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
typedef  unsigned int uint32_t ;

/* Variables and functions */
 unsigned int MAX_LENGTH_CANON ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (char const*,char*,unsigned int*) ; 
 char* FUNC2 (char*,char*,char**) ; 

__attribute__((used)) static size_t
FUNC3(char *buf, uint32_t *v)
{
    char *last;
    unsigned ret = 0;
    const char *n;
    unsigned u;

    for(n = FUNC2(buf, " ", &last);
	n != NULL;
	n = FUNC2(NULL, " ", &last)) {
	if (ret >= MAX_LENGTH_CANON) {
	    FUNC0(1, "increase MAX_LENGTH_CANON");
	}
	if (FUNC1(n, "%x", &u) != 1) {
	    FUNC0(1, "failed to parse hex: %s", n);
	}
	v[ret] = u;
	++ret;
    }
    return ret;
}