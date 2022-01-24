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
typedef  scalar_t__ Char ;

/* Variables and functions */
 int ERR_NAME ; 
 int ERR_SUBSCRIPT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static Char *
FUNC2(Char *cp, int *ip)
{
    *ip = 0;
    *cp++ = 0;
    while (*cp && FUNC0(*cp))
	*ip = *ip * 10 + *cp++ - '0';
    if (*cp++ != ']')
	FUNC1(ERR_NAME | ERR_SUBSCRIPT);
    return (cp);
}