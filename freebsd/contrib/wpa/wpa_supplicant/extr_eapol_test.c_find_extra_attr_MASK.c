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
typedef  scalar_t__ u8 ;
struct extra_radius_attr {scalar_t__ type; struct extra_radius_attr* next; } ;

/* Variables and functions */

__attribute__((used)) static struct extra_radius_attr *
FUNC0(struct extra_radius_attr *attrs, u8 type)
{
	struct extra_radius_attr *p;
	for (p = attrs; p; p = p->next) {
		if (p->type == type)
			return p;
	}
	return NULL;
}