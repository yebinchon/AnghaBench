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
struct heim_base {TYPE_1__* autorelpool; } ;
struct ar_tls {TYPE_1__* current; } ;
typedef  int /*<<< orphan*/ * heim_object_t ;
typedef  TYPE_1__* heim_auto_release_t ;
struct TYPE_2__ {int /*<<< orphan*/  pool_mutex; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct heim_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct heim_base*,int /*<<< orphan*/ ) ; 
 struct heim_base* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  autorel ; 
 struct ar_tls* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(heim_object_t ptr)
{
    struct heim_base *p = FUNC4(ptr);
    struct ar_tls *tls = FUNC5();
    heim_auto_release_t ar;

    if (ptr == NULL || FUNC7(ptr))
	return;

    /* drop from old pool */
    if ((ar = p->autorelpool) != NULL) {
	FUNC0(&ar->pool_mutex);
	FUNC3(&ar->pool, p, autorel);
	p->autorelpool = NULL;
	FUNC1(&ar->pool_mutex);
    }

    if (tls == NULL || (ar = tls->current) == NULL)
	FUNC6("no auto relase pool in place, would leak");

    FUNC0(&ar->pool_mutex);
    FUNC2(&ar->pool, p, autorel);
    p->autorelpool = ar;
    FUNC1(&ar->pool_mutex);
}