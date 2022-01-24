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
 char const* hexchar ; 
 char FUNC0 (unsigned char) ; 

__attribute__((used)) static int
FUNC1(char c)
{
    const char *p;
    c = FUNC0((unsigned char)c);
    for (p = hexchar; *p; p++)
	if (*p == c)
	    return p - hexchar;
    return -1;
}