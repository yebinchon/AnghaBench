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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcm_operation ;
typedef  int /*<<< orphan*/  kcm_client ;
typedef  TYPE_1__* kcm_ccache ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  uuid; struct TYPE_4__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int KCM_FLAGS_VALID ; 
 scalar_t__ KRB5_FCC_NOFILE ; 
 TYPE_1__* ccache_head ; 
 int /*<<< orphan*/  ccache_mutex ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

krb5_error_code
FUNC4(krb5_context context, kcm_client *client, kcm_operation opcode, krb5_storage *sp)
{
    krb5_error_code ret;
    kcm_ccache p;

    ret = KRB5_FCC_NOFILE;

    FUNC0(&ccache_mutex);

    for (p = ccache_head; p != NULL; p = p->next) {
	if ((p->flags & KCM_FLAGS_VALID) == 0)
	    continue;
	ret = FUNC2(context, client, opcode, p);
	if (ret) {
	    ret = 0;
	    continue;
	}
	FUNC3(sp, p->uuid, sizeof(p->uuid));
    }

    FUNC1(&ccache_mutex);

    return ret;
}