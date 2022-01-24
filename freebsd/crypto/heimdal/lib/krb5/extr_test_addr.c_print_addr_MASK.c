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
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,int) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(krb5_context context, const char *addr)
{
    krb5_addresses addresses;
    krb5_error_code ret;
    char buf[38];
    char buf2[1000];
    size_t len;
    int i;

    ret = FUNC2(context, addr, &addresses);
    if (ret)
	FUNC0(context, 1, ret, "krb5_parse_address");

    if (addresses.len < 1)
	FUNC0(context, 1, ret, "too few addresses");

    for (i = 0; i < addresses.len; i++) {
	FUNC3(&addresses.val[i], buf, sizeof(buf), &len);
#if 0
	printf("addr %d: %s (%d/%d)\n", i, buf, (int)len, (int)strlen(buf));
#endif
	if (FUNC5(buf) > sizeof(buf))
	    FUNC0(context, 1, ret, "len %d larger then buf %d",
		     (int)FUNC5(buf), (int)sizeof(buf));
	FUNC3(&addresses.val[i], buf2, sizeof(buf2), &len);
#if 0
	printf("addr %d: %s (%d/%d)\n", i, buf2, (int)len, (int)strlen(buf2));
#endif
	if (FUNC5(buf2) > sizeof(buf2))
	    FUNC0(context, 1, ret, "len %d larger then buf %d",
		     (int)FUNC5(buf2), (int)sizeof(buf2));

    }
    FUNC1(context, &addresses);

}