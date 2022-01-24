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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGSTRIPESIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int*) ; 

off_t
FUNC1(int fd)
{
	off_t stripesize;

	if (FUNC0(fd, DIOCGSTRIPESIZE, &stripesize) == -1)
		return (-1);
	return (stripesize);
}