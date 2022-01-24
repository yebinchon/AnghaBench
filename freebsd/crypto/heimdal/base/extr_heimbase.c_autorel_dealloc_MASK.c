#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ar_tls {void* current; void* head; int /*<<< orphan*/  tls_mutex; } ;
typedef  TYPE_1__* heim_auto_release_t ;
struct TYPE_3__ {void* parent; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ar_tls* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(void *ptr)
{
    heim_auto_release_t ar = ptr;
    struct ar_tls *tls;

    tls = FUNC3();
    if (tls == NULL)
	FUNC4("autorelease pool released on thread w/o autorelease inited");

    FUNC5(ar);

    if (!FUNC2(&ar->pool))
	FUNC4("pool not empty after draining");

    FUNC0(&tls->tls_mutex);
    if (tls->current != ptr)
	FUNC4("autorelease not releaseing top pool");

    if (tls->current != tls->head)
	tls->current = ar->parent;
    FUNC1(&tls->tls_mutex);
}