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
typedef  int /*<<< orphan*/  krb5_const_realm ;
struct TYPE_4__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ kadm5_server_context ;
typedef  int /*<<< orphan*/  kadm5_principal_ent_t ;

/* Variables and functions */
 int /*<<< orphan*/  KADM5_PRINCIPAL_NORMAL_MASK ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC4 (kadm5_server_context *contextp,
	     krb5_principal princ,
	     kadm5_principal_ent_t default_ent)
{
    krb5_error_code ret;
    krb5_principal def_principal;
    krb5_const_realm realm = FUNC3(contextp->context, princ);

    ret = FUNC2 (contextp->context, &def_principal,
			       realm, "default", NULL);
    if (ret)
	return ret;
    ret = FUNC0 (contextp, def_principal, default_ent,
			       KADM5_PRINCIPAL_NORMAL_MASK);
    FUNC1 (contextp->context, def_principal);
    return ret;
}