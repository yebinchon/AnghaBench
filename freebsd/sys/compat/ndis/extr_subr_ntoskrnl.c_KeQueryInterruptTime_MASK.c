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
typedef  int uint64_t ;
struct timeval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC2 (struct timeval*) ; 

__attribute__((used)) static uint64_t
FUNC3(void)
{
	int ticks;
	struct timeval tv;

	FUNC0(&tv);

	ticks = FUNC2(&tv);

	return ticks * FUNC1(10000000, hz);
}