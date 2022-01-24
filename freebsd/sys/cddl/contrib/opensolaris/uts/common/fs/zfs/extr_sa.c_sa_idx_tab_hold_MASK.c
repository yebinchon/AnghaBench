#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sa_lock; } ;
typedef  TYPE_1__ sa_os_t ;
struct TYPE_7__ {int /*<<< orphan*/  sa_refcount; } ;
typedef  TYPE_2__ sa_idx_tab_t ;
struct TYPE_8__ {TYPE_1__* os_sa; } ;
typedef  TYPE_3__ objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(objset_t *os, sa_idx_tab_t *idx_tab)
{
	sa_os_t *sa = os->os_sa;

	FUNC0(FUNC1(&sa->sa_lock));
	(void) FUNC2(&idx_tab->sa_refcount, NULL);
}