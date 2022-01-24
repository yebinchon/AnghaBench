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
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kadm_handle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 

int
FUNC4(void *opt, int argc, char **argv)
{
    krb5_error_code ret;
    krb5_principal princ1, princ2;

    ret = FUNC2(context, argv[0], &princ1);
    if(ret){
	FUNC3(context, ret, "krb5_parse_name(%s)", argv[0]);
	return ret != 0;
    }
    ret = FUNC2(context, argv[1], &princ2);
    if(ret){
	FUNC1(context, princ1);
	FUNC3(context, ret, "krb5_parse_name(%s)", argv[1]);
	return ret != 0;
    }
    ret = FUNC0(kadm_handle, princ1, princ2);
    if(ret)
	FUNC3(context, ret, "rename");
    FUNC1(context, princ1);
    FUNC1(context, princ2);
    return ret != 0;
}