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
struct TYPE_4__ {scalar_t__ ccache; scalar_t__ valid; struct TYPE_4__* next; } ;
typedef  TYPE_1__ kcm_event ;
typedef  scalar_t__ kcm_ccache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* events_head ; 
 int /*<<< orphan*/  events_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__**) ; 

krb5_error_code
FUNC4(krb5_context context,
		   kcm_ccache ccache)
{
    kcm_event **e;

    FUNC2(ccache);

    FUNC0(&events_mutex);

    for (e = &events_head; *e != NULL; e = &(*e)->next) {
	if ((*e)->valid && (*e)->ccache == ccache) {
	    FUNC3(context, e);
	}
	if (*e == NULL)
	    break;
    }

    FUNC1(&events_mutex);

    return 0;
}