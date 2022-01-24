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
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_1__* kcm_ccache ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * creds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

krb5_error_code
FUNC2(krb5_context context,
			    kcm_ccache ccache)
{
    krb5_error_code ret;

    FUNC0(ccache);

    if (ccache->creds == NULL) {
	ret = FUNC1(context, ccache->name);
    } else
	ret = 0;

    return ret;
}