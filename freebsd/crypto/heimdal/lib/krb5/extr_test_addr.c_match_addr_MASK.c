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
struct TYPE_4__ {int len; int /*<<< orphan*/ * val; } ;
typedef  TYPE_1__ krb5_addresses ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(krb5_context context, const char *range_addr,
	   const char *one_addr, int match)
{
    krb5_addresses range, one;
    krb5_error_code ret;

    ret = FUNC4(context, range_addr, &range);
    if (ret)
	FUNC1(context, 1, ret, "krb5_parse_address");

    if (range.len != 1)
	FUNC1(context, 1, ret, "wrong num of addresses");

    ret = FUNC4(context, one_addr, &one);
    if (ret)
	FUNC1(context, 1, ret, "krb5_parse_address");

    if (one.len != 1)
	FUNC1(context, 1, ret, "wrong num of addresses");

    if (FUNC0(context, &range.val[0], &one.val[0]) == 0) {
	if (!match)
	    FUNC2(context, 1, "match when one shouldn't be");
    } else {
	if (match)
	    FUNC2(context, 1, "no match when one should be");
    }

    FUNC3(context, &range);
    FUNC3(context, &one);
}