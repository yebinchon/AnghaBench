#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rename_options {scalar_t__ delete_flag; } ;
typedef  void* krb5_principal ;
typedef  int /*<<< orphan*/  krb5_kt_cursor ;
struct TYPE_6__ {void* principal; } ;
typedef  TYPE_1__ krb5_keytab_entry ;
typedef  int /*<<< orphan*/ * krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 scalar_t__ KRB5_CC_END ; 
 scalar_t__ KRB5_KT_END ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,void**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 int /*<<< orphan*/ * FUNC11 () ; 

int
FUNC12(struct rename_options *opt, int argc, char **argv)
{
    krb5_error_code ret = 0;
    krb5_keytab_entry entry;
    krb5_keytab keytab;
    krb5_kt_cursor cursor;
    krb5_principal from_princ, to_princ;

    ret = FUNC8(context, argv[0], &from_princ);
    if(ret != 0) {
	FUNC10(context, ret, "%s", argv[0]);
	return 1;
    }

    ret = FUNC8(context, argv[1], &to_princ);
    if(ret != 0) {
	FUNC0(context, from_princ);
	FUNC10(context, ret, "%s", argv[1]);
	return 1;
    }

    if((keytab = FUNC11()) == NULL) {
	FUNC0(context, from_princ);
	FUNC0(context, to_princ);
	return 1;
    }

    ret = FUNC7(context, keytab, &cursor);
    if(ret) {
	FUNC2(context, keytab);
	FUNC0(context, from_princ);
	FUNC0(context, to_princ);
	return 1;
    }
    while(1) {
	ret = FUNC5(context, keytab, &entry, &cursor);
	if(ret != 0) {
	    if(ret != KRB5_CC_END && ret != KRB5_KT_END)
		FUNC10(context, ret, "getting entry from keytab");
	    else
		ret = 0;
	    break;
	}
	if(FUNC9(context, entry.principal, from_princ)) {
	    FUNC0(context, entry.principal);
	    entry.principal = to_princ;
	    ret = FUNC1(context, keytab, &entry);
	    if(ret) {
		entry.principal = NULL;
		FUNC4(context, &entry);
		FUNC10(context, ret, "adding entry");
		break;
	    }
	    if (opt->delete_flag) {
		entry.principal = from_princ;
		ret = FUNC6(context, keytab, &entry);
		if(ret) {
		    entry.principal = NULL;
		    FUNC4(context, &entry);
		    FUNC10(context, ret, "removing entry");
		    break;
		}
	    }
	    entry.principal = NULL;
	}
	FUNC4(context, &entry);
    }
    FUNC3(context, keytab, &cursor);

    FUNC0(context, from_princ);
    FUNC0(context, to_princ);

    return ret != 0;
}