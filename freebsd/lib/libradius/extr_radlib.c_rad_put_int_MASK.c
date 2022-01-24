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
typedef  int /*<<< orphan*/  u_int32_t ;
struct rad_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rad_handle*,int,int /*<<< orphan*/ *,int) ; 

int
FUNC2(struct rad_handle *h, int type, u_int32_t value)
{
	u_int32_t nvalue;

	nvalue = FUNC0(value);
	return FUNC1(h, type, &nvalue, sizeof nvalue);
}