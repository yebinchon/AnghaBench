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
struct proc_handle {int dummy; } ;
typedef  int /*<<< orphan*/  prmap_t ;
struct TYPE_2__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct proc_handle*,char const*) ; 

prmap_t *
FUNC1(struct proc_handle *p, const char *name)
{

	return (&FUNC0(p, name)->map);
}