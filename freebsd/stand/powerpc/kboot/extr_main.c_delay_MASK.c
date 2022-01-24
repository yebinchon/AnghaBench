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
typedef  scalar_t__ uint64_t ;
struct host_timeval {int tv_sec; scalar_t__ tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct host_timeval*,int /*<<< orphan*/ *) ; 

void
FUNC1(int usecs)
{
	struct host_timeval tvi, tv;
	uint64_t ti, t;
	FUNC0(&tvi, NULL);
	ti = tvi.tv_sec*1000000 + tvi.tv_usec;
	do {
		FUNC0(&tv, NULL);
		t = tv.tv_sec*1000000 + tv.tv_usec;
	} while (t < ti + usecs);
}