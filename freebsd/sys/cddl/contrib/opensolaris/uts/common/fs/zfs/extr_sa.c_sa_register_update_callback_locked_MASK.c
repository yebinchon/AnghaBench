#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sa_update_cb_t ;
struct TYPE_5__ {TYPE_1__* os_sa; } ;
typedef  TYPE_2__ objset_t ;
struct TYPE_4__ {int /*<<< orphan*/ * sa_update_cb; int /*<<< orphan*/  sa_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(objset_t *os, sa_update_cb_t *func)
{
	FUNC0(FUNC1(&os->os_sa->sa_lock));
	os->os_sa->sa_update_cb = func;
}