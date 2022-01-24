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
struct timespec {unsigned long tv_sec; scalar_t__ tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec*) ; 

uint64_t
FUNC1(void)
{
	struct timespec current_time;

	FUNC0(&current_time);

	return (current_time.tv_sec * 1000000000UL + current_time.tv_nsec);
}