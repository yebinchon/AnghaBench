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
 int /*<<< orphan*/  SET_INVALID_PARAM_HANDLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(int argc, char **argv)
{
    krb5_context context;
    krb5_error_code ret;

    SET_INVALID_PARAM_HANDLER;

    FUNC6(argv[0]);

    ret = FUNC3(&context);
    if (ret)
	FUNC1 (1, "krb5_init_context failed: %d", ret);

    FUNC5(context, "RANGE:127.0.0.0/8");
    FUNC5(context, "RANGE:127.0.0.0/24");
    FUNC5(context, "RANGE:IPv4:127.0.0.0-IPv4:127.0.0.255");
    FUNC5(context, "RANGE:130.237.237.4/29");
#ifdef HAVE_IPV6
    print_addr(context, "RANGE:2001:db8:1:2:3:4:1428:7ab/64");
    print_addr(context, "RANGE:IPv6:fe80::209:6bff:fea0:e522/64");
    print_addr(context, "RANGE:IPv6:fe80::-IPv6:fe80::ffff:ffff:ffff:ffff");
    print_addr(context, "RANGE:fe80::-fe80::ffff:ffff:ffff:ffff");
#endif

    FUNC0(context, "IPv4:127.0.0.0");
    FUNC0(context, "RANGE:IPv4:127.0.0.0-IPv4:127.0.0.255");
#ifdef HAVE_IPV6
    check_truncation(context, "IPv6:::");
    check_truncation(context, "IPv6:::1");
    check_truncation(context, "IPv6:2001:db8:1:2:3:4:1428:7ab");
    check_truncation(context, "IPv6:fe80::209:0:0:0");
    check_truncation(context, "IPv6:fe80::ffff:ffff:ffff:ffff");
#endif

    FUNC4(context, "RANGE:127.0.0.0/8", "inet:127.0.0.0", 1);
    FUNC4(context, "RANGE:127.0.0.0/8", "inet:127.255.255.255", 1);
    FUNC4(context, "RANGE:127.0.0.0/8", "inet:128.0.0.0", 0);

    FUNC4(context, "RANGE:130.237.237.8/29", "inet:130.237.237.7", 0);
    FUNC4(context, "RANGE:130.237.237.8/29", "inet:130.237.237.8", 1);
    FUNC4(context, "RANGE:130.237.237.8/29", "inet:130.237.237.15", 1);
    FUNC4(context, "RANGE:130.237.237.8/29", "inet:130.237.237.16", 0);

    FUNC2(context);

    return 0;
}