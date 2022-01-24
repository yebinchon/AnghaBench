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
struct kcm_creds {int /*<<< orphan*/  cred; int /*<<< orphan*/  uuid; struct kcm_creds* next; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_1__* kcm_ccache ;
struct TYPE_3__ {struct kcm_creds* creds; } ;

/* Variables and functions */
 scalar_t__ KRB5_CC_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kcm_creds*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

krb5_error_code
FUNC4(krb5_context context,
			       kcm_ccache ccache,
			       krb5_creds *creds,
			       int copy,
			       krb5_creds **credp)
{
    struct kcm_creds **c;
    krb5_error_code ret;

    for (c = &ccache->creds; *c != NULL; c = &(*c)->next)
	;

    *c = (struct kcm_creds *)FUNC1(1, sizeof(**c));
    if (*c == NULL)
	return KRB5_CC_NOMEM;

    FUNC0((*c)->uuid, sizeof((*c)->uuid));

    *credp = &(*c)->cred;

    if (copy) {
	ret = FUNC3(context, creds, *credp);
	if (ret) {
	    FUNC2(*c);
	    *c = NULL;
	}
    } else {
	**credp = *creds;
	ret = 0;
    }

    return ret;
}