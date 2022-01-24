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
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_4__ {int /*<<< orphan*/  acl_flags; int /*<<< orphan*/  context; int /*<<< orphan*/  caller; } ;
typedef  TYPE_1__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;

/* Variables and functions */
 int /*<<< orphan*/  KADM5_ADMIN_SERVICE ; 
 int /*<<< orphan*/  KADM5_PRIV_ALL ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC4(kadm5_server_context *context)
{
    krb5_principal princ;
    krb5_error_code ret;

    ret = FUNC2(context->context, KADM5_ADMIN_SERVICE, &princ);
    if (ret)
	return ret;
    ret = FUNC3(context->context, context->caller, princ);
    FUNC1(context->context, princ);
    if(ret != 0) {
	context->acl_flags = KADM5_PRIV_ALL;
	return 0;
    }

    return FUNC0 (context, NULL, &context->acl_flags);
}