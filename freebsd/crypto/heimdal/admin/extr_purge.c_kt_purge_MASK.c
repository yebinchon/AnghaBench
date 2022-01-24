#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
struct purge_options {int /*<<< orphan*/  age_string; } ;
struct e {scalar_t__ max_vno; int timestamp; } ;
typedef  int /*<<< orphan*/  krb5_kt_cursor ;
struct TYPE_5__ {scalar_t__ vno; int /*<<< orphan*/  principal; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_1__ krb5_keytab_entry ;
typedef  int /*<<< orphan*/ * krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct e**) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC1 (struct e*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct e* FUNC3 (int /*<<< orphan*/ ,struct e*) ; 
 int /*<<< orphan*/  keytab_string ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,scalar_t__) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ verbose_flag ; 

int
FUNC17(struct purge_options *opt, int argc, char **argv)
{
    krb5_error_code ret = 0;
    krb5_kt_cursor cursor;
    krb5_keytab keytab;
    krb5_keytab_entry entry;
    int age;
    struct e *head = NULL;
    time_t judgement_day;

    age = FUNC14(opt->age_string, "s");
    if(age < 0) {
	FUNC12(context, "unparasable time `%s'", opt->age_string);
	return 1;
    }

    if((keytab = FUNC13()) == NULL)
	return 1;

    ret = FUNC9(context, keytab, &cursor);
    if(ret){
	FUNC11(context, ret, "%s", keytab_string);
	goto out;
    }

    while(FUNC7(context, keytab, &entry, &cursor) == 0) {
	FUNC0 (entry.principal, entry.vno, entry.timestamp, &head);
	FUNC6(context, &entry);
    }
    FUNC5(context, keytab, &cursor);

    judgement_day = FUNC16 (NULL);

    ret = FUNC9(context, keytab, &cursor);
    if(ret){
	FUNC11(context, ret, "%s", keytab_string);
	goto out;
    }

    while(FUNC7(context, keytab, &entry, &cursor) == 0) {
	struct e *e = FUNC3 (entry.principal, head);

	if (e == NULL) {
	    FUNC12 (context, "ignoring extra entry");
	    continue;
	}

	if (entry.vno < e->max_vno
	    && judgement_day - e->timestamp > age) {
	    if (verbose_flag) {
		char *name_str;

		FUNC10 (context, entry.principal, &name_str);
		FUNC15 ("removing %s vno %d\n", name_str, entry.vno);
		FUNC2 (name_str);
	    }
	    ret = FUNC8 (context, keytab, &entry);
	    if (ret)
		FUNC11 (context, ret, "remove");
	}
	FUNC6(context, &entry);
    }
    ret = FUNC5(context, keytab, &cursor);

    FUNC1 (head);

 out:
    FUNC4 (context, keytab);
    return ret != 0;
}