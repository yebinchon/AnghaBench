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
struct knote {struct eventfd* kn_hook; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct eventfd {int /*<<< orphan*/  efd_lock; TYPE_1__ efd_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct knote *kn)
{
	struct eventfd *efd = kn->kn_hook;

	FUNC1(&efd->efd_lock);
	FUNC0(&efd->efd_sel.si_note, kn, 1);
	FUNC2(&efd->efd_lock);
}