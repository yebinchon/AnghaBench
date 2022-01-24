#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kswitch_options {scalar_t__ cache_string; int /*<<< orphan*/  type_string; int /*<<< orphan*/  principal_string; scalar_t__ interactive_flag; } ;
typedef  int /*<<< orphan*/  rtbl_t ;
typedef  int /*<<< orphan*/  num ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/ * krb5_ccache ;
struct TYPE_3__ {int /*<<< orphan*/  prefix; } ;
typedef  TYPE_1__ krb5_cc_ops ;
typedef  int /*<<< orphan*/  krb5_cc_cache_cursor ;
typedef  int /*<<< orphan*/  ids ;

/* Variables and functions */
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ **,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  kcc_context ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 char* FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC27 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC28(struct kswitch_options *opt, int argc, char **argv)
{
    krb5_error_code ret;
    krb5_ccache id = NULL;

    if (opt->cache_string && opt->principal_string)
	FUNC16(kcc_context, 1,
		  FUNC0("Both --cache and --principal given, choose one", ""));

    if (opt->interactive_flag) {
	krb5_cc_cache_cursor cursor;
	krb5_ccache *ids = NULL;
	size_t i, len = 0;
	char *name;
	rtbl_t ct;

	ct = FUNC23();

	FUNC21(ct, 0, "#", 0);
	FUNC21(ct, 1, "Principal", 0);
	FUNC26(ct, 1, "    ", "");
        FUNC21(ct, 2, "Type", 0);
        FUNC26(ct, 2, "  ", "");

	ret = FUNC6(kcc_context, NULL, &cursor);
	if (ret)
	    FUNC15(kcc_context, 1, ret, "krb5_cc_cache_get_first");

	while (FUNC8(kcc_context, cursor, &id) == 0) {
	    krb5_principal p;
	    char num[10];

	    ret = FUNC11(kcc_context, id, &p);
	    if (ret)
		continue;

	    ret = FUNC19(kcc_context, p, &name);
	    FUNC17(kcc_context, p);

	    FUNC27(num, sizeof(num), "%d", (int)(len + 1));
	    FUNC22(ct, 0, num);
	    FUNC22(ct, 1, name);
            FUNC22(ct, 2, FUNC12(kcc_context, id));
	    FUNC4(name);

	    ids = FUNC3(ids, (len + 1) * sizeof(ids[0]));
	    ids[len] = id;
	    len++;
	}
	FUNC5(kcc_context, cursor);

	FUNC25(ct, stdout);
	FUNC24(ct);

	name = FUNC20("Select number: ");
	if (name) {
	    i = FUNC2(name);
	    if (i == 0)
		FUNC16(kcc_context, 1, "Cache number '%s' is invalid", name);
	    if (i > len)
		FUNC16(kcc_context, 1, "Cache number '%s' is too large", name);

	    id = ids[i - 1];
	    ids[i - 1] = NULL;
	} else
	    FUNC16(kcc_context, 1, "No cache selected");
	for (i = 0; i < len; i++)
	    if (ids[i])
		FUNC9(kcc_context, ids[i]);

    } else if (opt->principal_string) {
	krb5_principal p;

	ret = FUNC18(kcc_context, opt->principal_string, &p);
	if (ret)
	    FUNC15(kcc_context, 1, ret, "krb5_parse_name: %s",
		     opt->principal_string);

	ret = FUNC7(kcc_context, p, &id);
	if (ret)
	    FUNC15(kcc_context, 1, ret,
		     FUNC0("Did not find principal: %s", ""),
		     opt->principal_string);

	FUNC17(kcc_context, p);

    } else if (opt->cache_string) {
	const krb5_cc_ops *ops;
	char *str;

	ops = FUNC10(kcc_context, opt->type_string);
	if (ops == NULL)
	    FUNC15(kcc_context, 1, 0, "krb5_cc_get_prefix_ops");

	FUNC1(&str, "%d:%ld", ops->prefix, opt->cache_string);
	if (str == NULL)
	    FUNC16(kcc_context, 1, FUNC0("out of memory", ""));

	ret = FUNC13(kcc_context, str, &id);
	if (ret)
	    FUNC15(kcc_context, 1, ret, "krb5_cc_resolve: %s", str);

	FUNC4(str);
    } else {
	FUNC16(kcc_context, 1, "missing option for kswitch");
    }

    ret = FUNC14(kcc_context, id);
    if (ret)
	FUNC15(kcc_context, 1, ret, "krb5_cc_switch");

    return 0;
}