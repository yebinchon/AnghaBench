#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct arange {int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
typedef  int krb5_error_code ;
struct TYPE_4__ {struct arange* data; } ;
struct TYPE_5__ {TYPE_1__ address; } ;
typedef  TYPE_2__ krb5_address ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,size_t,size_t*) ; 
 size_t FUNC1 (char*,char*,size_t) ; 
 size_t FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC3 (const krb5_address *addr, char *str, size_t len)
{
    struct arange *a;
    krb5_error_code ret;
    size_t l, size, ret_len;

    a = addr->address.data;

    l = FUNC2(str, "RANGE:", len);
    ret_len = l;
    if (l > len)
	l = len;
    size = l;

    ret = FUNC0 (&a->low, str + size, len - size, &l);
    if (ret)
	return ret;
    ret_len += l;
    if (len - size > l)
	size += l;
    else
	size = len;

    l = FUNC1(str + size, "-", len - size);
    ret_len += l;
    if (len - size > l)
	size += l;
    else
	size = len;

    ret = FUNC0 (&a->high, str + size, len - size, &l);
    if (ret)
	return ret;
    ret_len += l;

    return ret_len;
}