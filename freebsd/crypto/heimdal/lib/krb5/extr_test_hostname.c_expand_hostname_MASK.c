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
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 scalar_t__ debug_flag ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,char**,char***) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC6(krb5_context context, const char *host)
{
    krb5_error_code ret;
    char *h, **r;

    ret = FUNC2(context, host, &h);
    if (ret)
	FUNC1(context, 1, ret, "krb5_expand_hostname(%s)", host);

    FUNC0(h);

    if (debug_flag)
	FUNC5("hostname: %s -> %s\n", host, h);

    ret = FUNC3(context, host, &h, &r);
    if (ret)
	FUNC1(context, 1, ret, "krb5_expand_hostname_realms(%s)", host);

    if (debug_flag) {
	int j;

	FUNC5("hostname: %s -> %s\n", host, h);
	for (j = 0; r[j]; j++) {
	    FUNC5("\trealm: %s\n", r[j]);
	}
    }
    FUNC0(h);
    FUNC4(context, r);

    return 0;
}