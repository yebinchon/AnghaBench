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
typedef  union ccb {int dummy; } ccb ;

/* Variables and functions */
 int /*<<< orphan*/  M_CAMCCB ; 
 int /*<<< orphan*/  FUNC0 (union ccb*,int /*<<< orphan*/ ) ; 

void
FUNC1(union ccb *free_ccb)
{
	FUNC0(free_ccb, M_CAMCCB);
}