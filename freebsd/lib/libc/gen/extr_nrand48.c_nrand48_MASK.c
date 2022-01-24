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
 int /*<<< orphan*/  FUNC0 (unsigned short*) ; 

long
FUNC1(unsigned short xseed[3])
{
	FUNC0(xseed);
	return ((long) xseed[2] << 15) + ((long) xseed[1] >> 1);
}