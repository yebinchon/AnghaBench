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
struct timeval {int tv_sec; int tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 

void
FUNC1 (int i)
{
    struct timeval t;
    long start, stop;

    i *= 4;

    FUNC0 (&t, NULL);
    start = t.tv_sec * 1000000 + t.tv_usec;
    do {
	FUNC0 (&t, NULL);
	stop = t.tv_sec * 1000000 + t.tv_usec;
    } while (start + i > stop);
}