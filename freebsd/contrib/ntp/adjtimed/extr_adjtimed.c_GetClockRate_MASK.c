#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rate ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {scalar_t__ n_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGALRM ; 
 long UNKNOWN_RATE ; 
 int /*<<< orphan*/  kmem ; 
 long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* nl ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (long) ; 

long
FUNC5(void)
{
	long rate, mask;

	if (FUNC0(kmem, (off_t)nl[0].n_value, 0) == -1L)
	    return (-1L);

	mask = FUNC2(FUNC3(SIGALRM));

	if (FUNC1(kmem, (caddr_t)&rate, sizeof(rate)) != sizeof(rate))
	    rate = UNKNOWN_RATE;

	FUNC4(mask);
	return (rate);
}