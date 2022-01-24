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
struct ctl_var {int flags; scalar_t__ text; } ;

/* Variables and functions */
 int EOV ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 

void
FUNC1(
	struct ctl_var *kv
	)
{
	struct ctl_var *k;
	if (kv) {
		for (k = kv; !(k->flags & EOV); k++)
			FUNC0((void *)(intptr_t)k->text);
		FUNC0((void *)kv);
	}
}