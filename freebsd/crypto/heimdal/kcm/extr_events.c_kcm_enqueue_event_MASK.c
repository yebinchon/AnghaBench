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
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_4__ {scalar_t__ action; } ;
typedef  TYPE_1__ kcm_event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ KCM_EVENT_NONE ; 
 int /*<<< orphan*/  events_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

krb5_error_code
FUNC3(krb5_context context,
		  kcm_event *event)
{
    krb5_error_code ret;

    if (event->action == KCM_EVENT_NONE) {
	return 0;
    }

    FUNC0(&events_mutex);
    ret = FUNC2(context, event);
    FUNC1(&events_mutex);

    return ret;
}