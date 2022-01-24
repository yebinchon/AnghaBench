#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rk_strpool {int dummy; } ;
struct list_options {scalar_t__ keys_flag; scalar_t__ timestamp_flag; } ;
typedef  int /*<<< orphan*/  rtbl_t ;
typedef  int /*<<< orphan*/  krb5_kt_cursor ;
struct TYPE_7__ {int length; scalar_t__ data; } ;
struct TYPE_8__ {unsigned char keytype; TYPE_1__ keyvalue; } ;
struct TYPE_10__ {unsigned char vno; TYPE_3__* aliases; int /*<<< orphan*/  principal; TYPE_2__ keyblock; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_4__ krb5_keytab_entry ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_9__ {unsigned int len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  RTBL_ALIGN_RIGHT ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 char* FUNC14 (struct rk_strpool*) ; 
 int /*<<< orphan*/  FUNC15 (struct rk_strpool*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,char*,unsigned char) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC23 (char const*,char*,int) ; 
 int FUNC24 (char const**,char*,char*,int) ; 

__attribute__((used)) static int
FUNC25(struct list_options *opt, const char *keytab_str)
{
    krb5_error_code ret;
    krb5_keytab keytab;
    krb5_keytab_entry entry;
    krb5_kt_cursor cursor;
    rtbl_t table;

    /* XXX specialcase the ANY type */
    if(FUNC23(keytab_str, "ANY:", 4) == 0) {
	int flag = 0;
	char buf[1024];
	keytab_str += 4;
	ret = 0;
	while (FUNC24((const char**)&keytab_str, ",",
			   buf, sizeof(buf)) != -1) {
	    if(flag)
		FUNC13("\n");
	    if(FUNC25(opt, buf))
		ret = 1;
	    flag = 1;
	}
	return ret;
    }

    ret = FUNC7(context, keytab_str, &keytab);
    if (ret) {
	FUNC10(context, ret, "resolving keytab %s", keytab_str);
	return ret;
    }

    ret = FUNC8(context, keytab, &cursor);
    if(ret) {
	FUNC10(context, ret, "krb5_kt_start_seq_get %s", keytab_str);
	FUNC3(context, keytab);
	return ret;
    }

    FUNC13 ("%s:\n\n", keytab_str);

    table = FUNC18();
    FUNC16(table, 0, "Vno", RTBL_ALIGN_RIGHT);
    FUNC16(table, 1, "Type", 0);
    FUNC16(table, 2, "Principal", 0);
    if (opt->timestamp_flag)
	FUNC16(table, 3, "Date", 0);
    if(opt->keys_flag)
	FUNC16(table, 4, "Key", 0);
    FUNC16(table, 5, "Aliases", 0);
    FUNC21(table, "  ");

    while(FUNC6(context, keytab, &entry, &cursor) == 0){
	char buf[1024], *s;

	FUNC22(buf, sizeof(buf), "%d", entry.vno);
	FUNC17(table, 0, buf);

	ret = FUNC1(context,
				     entry.keyblock.keytype, &s);
	if (ret != 0) {
	    FUNC22(buf, sizeof(buf), "unknown (%d)", entry.keyblock.keytype);
	    FUNC17(table, 1, buf);
	} else {
	    FUNC17(table, 1, s);
	    FUNC0(s);
	}

	FUNC9(context, entry.principal, buf, sizeof(buf));
	FUNC17(table, 2, buf);

	if (opt->timestamp_flag) {
	    FUNC2(context, entry.timestamp, buf,
			     sizeof(buf), FALSE);
	    FUNC17(table, 3, buf);
	}
	if(opt->keys_flag) {
	    size_t i;
	    s = FUNC12(2 * entry.keyblock.keyvalue.length + 1);
	    if (s == NULL) {
		FUNC11(context, "malloc failed");
		ret = ENOMEM;
		goto out;
	    }
	    for(i = 0; i < entry.keyblock.keyvalue.length; i++)
		FUNC22(s + 2 * i, 3, "%02x",
			 ((unsigned char*)entry.keyblock.keyvalue.data)[i]);
	    FUNC17(table, 4, s);
	    FUNC0(s);
	}
	if (entry.aliases) {
	    unsigned int i;
	    struct rk_strpool *p = NULL;

	    for (i = 0; i< entry.aliases->len; i++) {
		FUNC9(context, entry.principal, buf, sizeof(buf));
		FUNC15(p, "%s%s", buf,
				 i + 1 < entry.aliases->len ? ", " : "");

	    }
	    FUNC17(table, 5, FUNC14(p));
	}

	FUNC5(context, &entry);
    }
    ret = FUNC4(context, keytab, &cursor);
    FUNC20(table, stdout);

out:
    FUNC19(table);

    FUNC3(context, keytab);
    return ret;
}