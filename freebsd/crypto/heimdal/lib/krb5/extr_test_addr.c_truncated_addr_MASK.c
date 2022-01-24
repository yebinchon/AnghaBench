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
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,int,...) ; 
 size_t FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(krb5_context context, const char *addr,
	       size_t truncate_len, size_t outlen)
{
    krb5_addresses addresses;
    krb5_error_code ret;
    char *buf;
    size_t len;

    buf = FUNC1(1, outlen + 1);

    ret = FUNC5(context, addr, &addresses);
    if (ret)
	FUNC3(context, 1, ret, "krb5_parse_address");

    if (addresses.len != 1)
	FUNC3(context, 1, ret, "addresses should be one");

    FUNC6(&addresses.val[0], buf, truncate_len, &len);

#if 0
    printf("addr %s (%d/%d) should be %d\n", buf, (int)len, (int)strlen(buf), (int)outlen);
#endif

    if (truncate_len > FUNC8(buf) + 1)
	FUNC3(context, 1, ret, "%s truncate_len %d larger then strlen %d source %s",
		 buf, (int)truncate_len, (int)FUNC8(buf), addr);

    if (outlen != len)
	FUNC3(context, 1, ret, "%s: outlen %d != len %d",
		 buf, (int)outlen, (int)FUNC8(buf));

    FUNC6(&addresses.val[0], buf, outlen + 1, &len);

#if 0
    printf("addr %s (%d/%d)\n", buf, (int)len, (int)strlen(buf));
#endif

    if (len != outlen)
	FUNC0();
    if (FUNC8(buf) != len)
	FUNC0();

    FUNC4(context, &addresses);
    FUNC2(buf);
}