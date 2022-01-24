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
struct heim_base {scalar_t__ ref_cnt; TYPE_1__* isa; TYPE_2__* autorelpool; } ;
typedef  int heim_base_atomic_type ;
typedef  TYPE_2__* heim_auto_release_t ;
struct TYPE_4__ {int /*<<< orphan*/  pool_mutex; int /*<<< orphan*/  pool; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* dealloc ) (void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct heim_base*,int /*<<< orphan*/ ) ; 
 struct heim_base* FUNC3 (void*) ; 
 int /*<<< orphan*/  autorel ; 
 int /*<<< orphan*/  FUNC4 (struct heim_base*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (scalar_t__*) ; 
 scalar_t__ heim_base_atomic_max ; 
 scalar_t__ FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

void
FUNC9(void *ptr)
{
    heim_base_atomic_type old;
    struct heim_base *p = FUNC3(ptr);

    if (ptr == NULL || FUNC7(ptr))
	return;

    if (p->ref_cnt == heim_base_atomic_max)
	return;

    old = FUNC6(&p->ref_cnt) + 1;

    if (old > 1)
	return;

    if (old == 1) {
	heim_auto_release_t ar = p->autorelpool;
	/* remove from autorel pool list */
	if (ar) {
	    p->autorelpool = NULL;
	    FUNC0(&ar->pool_mutex);
	    FUNC2(&ar->pool, p, autorel);
	    FUNC1(&ar->pool_mutex);
	}
	if (p->isa->dealloc)
	    p->isa->dealloc(ptr);
	FUNC4(p);
    } else
	FUNC5("over release");
}