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
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * krb5_ccache ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(krb5_context context, const char *principal, int find)
{
    krb5_principal client;
    krb5_error_code ret;
    krb5_ccache id = NULL;

    ret = FUNC4(context, principal, &client);
    if (ret)
	FUNC2(context, 1, ret, "parse_name for %s failed", principal);

    ret = FUNC0(context, client, &id);
    if (ret && find)
	FUNC2(context, 1, ret, "cc_cache_match for %s failed", principal);
    if (ret == 0 && !find)
	FUNC2(context, 1, ret, "cc_cache_match for %s found", principal);

    if (id)
	FUNC1(context, id);
    FUNC3(context, client);
}