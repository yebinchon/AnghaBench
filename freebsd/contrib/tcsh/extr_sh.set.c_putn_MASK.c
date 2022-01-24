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
typedef  int /*<<< orphan*/  tcsh_number_t ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 scalar_t__* FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* putp ; 

Char *
FUNC2(tcsh_number_t n)
{
    Char nbuf[1024]; /* Enough even for octal */

    putp = nbuf;
    if (n < 0) {
	n = -n;
	*putp++ = '-';
    }
    FUNC1(n);
    *putp = 0;
    return (FUNC0(nbuf));
}