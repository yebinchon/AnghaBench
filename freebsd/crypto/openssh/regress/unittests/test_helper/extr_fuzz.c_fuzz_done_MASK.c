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
typedef  int /*<<< orphan*/  u_long ;
struct fuzz {scalar_t__ strategies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct fuzz*) ; 

int
FUNC2(struct fuzz *fuzz)
{
	FUNC0(("fuzz = %p, strategies = 0x%lx", fuzz,
	    (u_long)fuzz->strategies));

	return FUNC1(fuzz) && fuzz->strategies == 0;
}