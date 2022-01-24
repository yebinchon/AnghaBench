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
struct ntlm_buf {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,struct ntlm_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ntlm_buf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_storage *sp, int ucs2, const char *s)
{
    krb5_error_code ret;
    struct ntlm_buf buf;

    if (ucs2) {
	ret = FUNC1(s, 0, &buf);
	if (ret)
	    return ret;
    } else {
	buf.data = FUNC4(s);
	buf.length = FUNC5(s);
    }

    FUNC0(FUNC3(sp, buf.data, buf.length), buf.length);
    if (ucs2)
	FUNC2(&buf);
    ret = 0;
out:
    return ret;
}