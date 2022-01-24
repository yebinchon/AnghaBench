#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct heim_auto_release {int dummy; } ;
struct ar_tls {int /*<<< orphan*/  tls_mutex; TYPE_1__* current; TYPE_1__* head; } ;
typedef  TYPE_1__* heim_auto_release_t ;
struct TYPE_4__ {struct TYPE_4__* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  _heim_autorel_object ; 
 struct ar_tls* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

heim_auto_release_t
FUNC5(void)
{
    struct ar_tls *tls = FUNC3();
    heim_auto_release_t ar;

    if (tls == NULL)
	FUNC4("Failed to create/get autorelease head");

    ar = FUNC2(&_heim_autorel_object, sizeof(struct heim_auto_release));
    if (ar) {
	FUNC0(&tls->tls_mutex);
	if (tls->head == NULL)
	    tls->head = ar;
	ar->parent = tls->current;
	tls->current = ar;
	FUNC1(&tls->tls_mutex);
    }

    return ar;
}