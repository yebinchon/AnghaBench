#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct compat_state {int /*<<< orphan*/  template; TYPE_1__* exclude; TYPE_2__* db; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* close ) (TYPE_2__*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* close ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(void *p)
{
	struct compat_state *st;

	if (p == NULL)
		return;
	st = (struct compat_state *)p;
	if (st->db != NULL)
		st->db->close(st->db);
	if (st->exclude != NULL)
		st->exclude->close(st->exclude);
	FUNC0(&st->template);
	FUNC1(p);
}