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
struct radius_class_data {size_t count; TYPE_1__* attr; } ;
struct TYPE_2__ {struct TYPE_2__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(struct radius_class_data *c)
{
	size_t i;
	if (c == NULL)
		return;
	for (i = 0; i < c->count; i++)
		FUNC0(c->attr[i].data);
	FUNC0(c->attr);
	c->attr = NULL;
	c->count = 0;
}