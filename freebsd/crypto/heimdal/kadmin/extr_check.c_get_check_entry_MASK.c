#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  kadm5_principal_ent_rec ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kadm_handle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(const char *name, kadm5_principal_ent_rec *ent)
{
    krb5_error_code ret;
    krb5_principal principal;

    ret = FUNC2(context, name, &principal);
    if (ret) {
	FUNC3(context, ret, "krb5_unparse_name: %s", name);
	return 1;
    }

    FUNC4(ent, 0, sizeof(*ent));
    ret = FUNC0(kadm_handle, principal, ent, 0);
    FUNC1(context, principal);
    if(ret)
	return 1;

    return 0;
}