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
struct remove_options {int /*<<< orphan*/  kvno_integer; int /*<<< orphan*/  enctype_string; int /*<<< orphan*/  principal_string; } ;
typedef  int /*<<< orphan*/ * krb5_principal ;
struct TYPE_4__ {int keytype; } ;
struct TYPE_5__ {int /*<<< orphan*/  vno; TYPE_1__ keyblock; int /*<<< orphan*/ * principal; } ;
typedef  TYPE_2__ krb5_keytab_entry ;
typedef  int /*<<< orphan*/ * krb5_keytab ;
typedef  int krb5_error_code ;
typedef  int krb5_enctype ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int*) ; 

int
FUNC9(struct remove_options *opt, int argc, char **argv)
{
    krb5_error_code ret = 0;
    krb5_keytab_entry entry;
    krb5_keytab keytab;
    krb5_principal principal = NULL;
    krb5_enctype enctype = 0;

    if(opt->principal_string) {
	ret = FUNC3(context, opt->principal_string, &principal);
	if(ret) {
	    FUNC5(context, ret, "%s", opt->principal_string);
	    return 1;
	}
    }
    if(opt->enctype_string) {
	ret = FUNC4(context, opt->enctype_string, &enctype);
	if(ret) {
	    int t;
	    if(FUNC8(opt->enctype_string, "%d", &t) == 1)
		enctype = t;
	    else {
		FUNC5(context, ret, "%s", opt->enctype_string);
		if(principal)
		    FUNC0(context, principal);
		return 1;
	    }
	}
    }
    if (!principal && !enctype && !opt->kvno_integer) {
	FUNC6(context,
		   "You must give at least one of "
		   "principal, enctype or kvno.");
	ret = EINVAL;
	goto out;
    }

    if((keytab = FUNC7()) == NULL) {
	ret = 1;
	goto out;
    }

    entry.principal = principal;
    entry.keyblock.keytype = enctype;
    entry.vno = opt->kvno_integer;
    ret = FUNC2(context, keytab, &entry);
    FUNC1(context, keytab);
    if(ret)
	FUNC5(context, ret, "remove");
 out:
    if(principal)
	FUNC0(context, principal);
    return ret != 0;
}