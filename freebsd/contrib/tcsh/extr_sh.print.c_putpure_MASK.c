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
 int CHAR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * linbuf ; 
 int /*<<< orphan*/ * linp ; 

int
FUNC1(int c)
{
    c &= CHAR;

    *linp++ = (char) c;
    if (linp >= &linbuf[sizeof linbuf - 10])
	FUNC0();
    return (1);
}