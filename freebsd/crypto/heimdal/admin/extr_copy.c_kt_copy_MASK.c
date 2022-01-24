#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_kt_cursor ;
struct TYPE_9__ {int /*<<< orphan*/  keytype; } ;
struct TYPE_8__ {int vno; TYPE_6__ keyblock; int /*<<< orphan*/  principal; } ;
typedef  TYPE_1__ krb5_keytab_entry ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 scalar_t__ KRB5_KT_NOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,TYPE_6__*) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  keytab_string ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbose_flag ; 

int
FUNC15 (void *opt, int argc, char **argv)
{
    krb5_error_code ret;
    krb5_keytab src_keytab, dst_keytab;
    krb5_kt_cursor cursor;
    krb5_keytab_entry entry, dummy;
    const char *from = argv[0];
    const char *to = argv[1];

    ret = FUNC10 (context, from, &src_keytab);
    if (ret) {
	FUNC13 (context, ret, "resolving src keytab `%s'", from);
	return 1;
    }

    ret = FUNC10 (context, to, &dst_keytab);
    if (ret) {
	FUNC5 (context, src_keytab);
	FUNC13 (context, ret, "resolving dst keytab `%s'", to);
	return 1;
    }

    ret = FUNC11 (context, src_keytab, &cursor);
    if (ret) {
	FUNC13 (context, ret, "krb5_kt_start_seq_get %s", keytab_string);
	goto out;
    }

    if (verbose_flag)
	FUNC1(stderr, "copying %s to %s\n", from, to);

    while((ret = FUNC9(context, src_keytab,
				    &entry, &cursor)) == 0) {
	char *name_str;
	char *etype_str;
	ret = FUNC12 (context, entry.principal, &name_str);
	if(ret) {
	    FUNC13(context, ret, "krb5_unparse_name");
	    name_str = NULL; /* XXX */
	}
	ret = FUNC3(context, entry.keyblock.keytype, &etype_str);
	if(ret) {
	    FUNC13(context, ret, "krb5_enctype_to_string");
	    etype_str = NULL; /* XXX */
	}
	ret = FUNC8(context, dst_keytab,
				entry.principal,
				entry.vno,
				entry.keyblock.keytype,
				&dummy);
	if(ret == 0) {
	    /* this entry is already in the new keytab, so no need to
               copy it; if the keyblocks are not the same, something
               is weird, so complain about that */
	    if(!FUNC0(&entry.keyblock, &dummy.keyblock)) {
		FUNC14(context, "entry with different keyvalue "
			   "already exists for %s, keytype %s, kvno %d",
			   name_str, etype_str, entry.vno);
	    }
	    FUNC7(context, &dummy);
	    FUNC7 (context, &entry);
	    FUNC2(name_str);
	    FUNC2(etype_str);
	    continue;
	} else if(ret != KRB5_KT_NOTFOUND) {
	    FUNC13 (context, ret, "%s: fetching %s/%s/%u",
		       to, name_str, etype_str, entry.vno);
	    FUNC7 (context, &entry);
	    FUNC2(name_str);
	    FUNC2(etype_str);
	    break;
	}
	if (verbose_flag)
	    FUNC1 (stderr, "copying %s, keytype %s, kvno %d\n", name_str,
		     etype_str, entry.vno);
	ret = FUNC4 (context, dst_keytab, &entry);
	FUNC7 (context, &entry);
	if (ret) {
	    FUNC13 (context, ret, "%s: adding %s/%s/%u",
		       to, name_str, etype_str, entry.vno);
	    FUNC2(name_str);
	    FUNC2(etype_str);
	    break;
	}
	FUNC2(name_str);
	FUNC2(etype_str);
    }
    FUNC6 (context, src_keytab, &cursor);

  out:
    FUNC5 (context, src_keytab);
    FUNC5 (context, dst_keytab);
    return ret != 0;
}