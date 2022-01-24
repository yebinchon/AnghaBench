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
struct ext_keytab_options {int /*<<< orphan*/ * keytab_string; } ;
struct ext_keytab_data {int /*<<< orphan*/  keytab; } ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  do_ext_keytab ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,char*,struct ext_keytab_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,char*) ; 

int
FUNC5(struct ext_keytab_options *opt, int argc, char **argv)
{
    krb5_error_code ret;
    int i;
    struct ext_keytab_data data;

    if (opt->keytab_string == NULL)
	ret = FUNC2(context, &data.keytab);
    else
	ret = FUNC3(context, opt->keytab_string, &data.keytab);

    if(ret){
	FUNC4(context, ret, "krb5_kt_resolve");
	return 1;
    }

    for(i = 0; i < argc; i++) {
	ret = FUNC0(argv[i], do_ext_keytab, "ext", &data);
	if (ret)
	    break;
    }

    FUNC1(context, data.keytab);

    return ret != 0;
}