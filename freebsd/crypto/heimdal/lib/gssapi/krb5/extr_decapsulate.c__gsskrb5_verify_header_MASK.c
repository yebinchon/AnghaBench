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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_S_DEFECTIVE_TOKEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void const*,int) ; 

OM_uint32
FUNC2(u_char **str,
			  size_t total_len,
			  const void *type,
			  gss_OID oid)
{
    OM_uint32 ret;
    size_t len;
    u_char *p = *str;

    ret = FUNC0(str, total_len, oid);
    if (ret)
	return ret;

    len = total_len - (*str - p);

    if (len < 2)
	return GSS_S_DEFECTIVE_TOKEN;

    if (FUNC1 (*str, type, 2) != 0)
	return GSS_S_DEFECTIVE_TOKEN;
    *str += 2;

    return 0;
}