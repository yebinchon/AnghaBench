#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcmuuid_t ;
typedef  TYPE_1__* kcm_ccache ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  uuid; struct TYPE_5__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int KCM_FLAGS_VALID ; 
 scalar_t__ KRB5_FCC_NOFILE ; 
 TYPE_1__* ccache_head ; 
 int /*<<< orphan*/  ccache_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

krb5_error_code
FUNC4(krb5_context context,
			   kcmuuid_t uuid,
			   kcm_ccache *ccache)
{
    kcm_ccache p;
    krb5_error_code ret;

    *ccache = NULL;

    ret = KRB5_FCC_NOFILE;

    FUNC0(&ccache_mutex);

    for (p = ccache_head; p != NULL; p = p->next) {
	if ((p->flags & KCM_FLAGS_VALID) == 0)
	    continue;
	if (FUNC3(p->uuid, uuid, sizeof(kcmuuid_t)) == 0) {
	    ret = 0;
	    break;
	}
    }

    if (ret == 0) {
	FUNC2(context, p);
	*ccache = p;
    }

    FUNC1(&ccache_mutex);

    return ret;
}