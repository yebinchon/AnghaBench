#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_7__ {scalar_t__ valid; scalar_t__ fire_time; scalar_t__ expire_time; TYPE_1__* ccache; struct TYPE_7__* next; } ;
typedef  TYPE_2__ kcm_event ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ KCM_EVENT_QUEUE_INTERVAL ; 
 TYPE_2__* events_head ; 
 int /*<<< orphan*/  events_mutex ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ last_run ; 

krb5_error_code
FUNC6(krb5_context context, time_t now)
{
    krb5_error_code ret;
    kcm_event **e;

    FUNC0(&events_mutex);

    /* Only run event queue every N seconds */
    if (now < last_run + KCM_EVENT_QUEUE_INTERVAL) {
	FUNC1(&events_mutex);
	return 0;
    }

    /* go through events list, fire and expire */
    for (e = &events_head; *e != NULL; e = &(*e)->next) {
	if ((*e)->valid == 0)
	    continue;

	if (now >= (*e)->fire_time) {
	    ret = FUNC2(context, e);
	    if (ret) {
		FUNC3(1, "Could not fire event for cache %s: %s",
			(*e)->ccache->name, FUNC5(context, ret));
	    }
	} else if ((*e)->expire_time && now >= (*e)->expire_time) {
	    ret = FUNC4(context, e);
	    if (ret) {
		FUNC3(1, "Could not expire event for cache %s: %s",
			(*e)->ccache->name, FUNC5(context, ret));
	    }
	}

	if (*e == NULL)
	    break;
    }

    last_run = now;

    FUNC1(&events_mutex);

    return 0;
}