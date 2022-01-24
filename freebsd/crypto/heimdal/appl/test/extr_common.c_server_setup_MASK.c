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
 int /*<<< orphan*/  args ; 
 int FUNC0 (int /*<<< orphan*/ *,int*,char**,int /*<<< orphan*/  (*) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  keytab ; 
 int /*<<< orphan*/ * keytab_str ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(krb5_context *context, int argc, char **argv)
{
    int port = FUNC0(context, &argc, argv, server_usage);
    krb5_error_code ret;

    if(argv[argc] != NULL)
	FUNC4(1, args, num_args);
    if (keytab_str != NULL)
	ret = FUNC3 (*context, keytab_str, &keytab);
    else
	ret = FUNC2 (*context, &keytab);
    if (ret)
	FUNC1 (*context, 1, ret, "krb5_kt_resolve/default");
    return port;
}