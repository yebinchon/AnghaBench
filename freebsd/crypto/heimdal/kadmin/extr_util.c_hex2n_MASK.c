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
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 

__attribute__((used)) static int
FUNC2 (char c)
{
    static char hexdigits[] = "0123456789abcdef";
    const char *p;

    p = FUNC0 (hexdigits, FUNC1((unsigned char)c));
    if (p == NULL)
	return -1;
    else
	return p - hexdigits;
}