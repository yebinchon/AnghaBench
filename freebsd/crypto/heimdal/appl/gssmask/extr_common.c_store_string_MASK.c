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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  size_t krb5_error_code ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (char const*) ; 

krb5_error_code
FUNC3(krb5_storage *sp, const char *str)
{
    size_t len = FUNC2(str) + 1;
    krb5_error_code ret;

    ret = FUNC1(sp, len);
    if (ret)
	return ret;
    ret = FUNC0(sp, str, len);
    if (ret != len)
	return EINVAL;
    return 0;
}