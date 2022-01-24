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
typedef  int /*<<< orphan*/  krb5_const_principal ;
struct TYPE_4__ {unsigned int acl_flags; } ;
typedef  TYPE_1__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int*) ; 

kadm5_ret_t
FUNC2(kadm5_server_context *context,
			    unsigned op,
			    krb5_const_principal princ)
{
    kadm5_ret_t ret;
    unsigned princ_flags;

    ret = FUNC0 (op, context->acl_flags);
    if (ret == 0)
	return ret;
    ret = FUNC1 (context, princ, &princ_flags);
    if (ret)
	return ret;
    return FUNC0 (op, princ_flags);
}