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
 scalar_t__ FUNC0 (unsigned char) ; 
 int FUNC1 (char*,char*,unsigned int*) ; 

__attribute__((used)) static int
FUNC2(char *buf)
{
    unsigned char *p, *q;
    for(p = q = (unsigned char *)buf; *p; p++, q++) {
	if(*p == '%' && FUNC0(p[1]) && FUNC0(p[2])) {
	    unsigned int x;
	    if(FUNC1((char *)p + 1, "%2x", &x) != 1)
		return -1;
	    *q = x;
	    p += 2;
	} else
	    *q = *p;
    }
    *q = '\0';
    return 0;
}