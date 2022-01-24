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
struct fst_iface {int dummy; } ;
typedef  int Boolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fst_iface*) ; 

Boolean FUNC1(struct fst_iface *iface1,
				  struct fst_iface *iface2)
{
	return FUNC0(iface1) == FUNC0(iface2);
}