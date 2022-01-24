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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  rtbl_t ;
typedef  int /*<<< orphan*/ * krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/  krb5_cc_cache_cursor ;

/* Variables and functions */
 int /*<<< orphan*/  COL_CACHENAME ; 
 int /*<<< orphan*/  COL_DEFCACHE ; 
 int /*<<< orphan*/  COL_EXPIRES ; 
 int /*<<< orphan*/  COL_NAME ; 
 scalar_t__ KRB5_CC_NOSUPP ; 
 char* FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC24 (char*,char*) ; 
 char* FUNC25 (char const*) ; 

__attribute__((used)) static int
FUNC26(krb5_context context)
{
    krb5_cc_cache_cursor cursor;
    const char *cdef_name;
    char *def_name;
    krb5_error_code ret;
    krb5_ccache id;
    rtbl_t ct;

    cdef_name = FUNC7(context);
    if (cdef_name == NULL)
	FUNC13(context, 1, "krb5_cc_default_name");
    def_name = FUNC25(cdef_name);

    ret = FUNC4 (context, NULL, &cursor);
    if (ret == KRB5_CC_NOSUPP)
	return 0;
    else if (ret)
	FUNC12 (context, 1, ret, "krb5_cc_cache_get_first");

    ct = FUNC19();
    FUNC17(ct, COL_NAME, 0);
    FUNC17(ct, COL_CACHENAME, 0);
    FUNC17(ct, COL_EXPIRES, 0);
    FUNC17(ct, COL_DEFCACHE, 0);
    FUNC23(ct, "   ");
    FUNC22(ct, COL_NAME, "");

    while (FUNC5 (context, cursor, &id) == 0) {
	krb5_principal principal = NULL;
	int expired = 0;
	char *name;
	time_t t;

	ret = FUNC11(context, id, &principal);
	if (ret)
	    continue;

	expired = FUNC1 (context, id, principal, &t);

	ret = FUNC8(context, id, &name);
	if (ret == 0) {
	    const char *str;
	    char *fname;
	    FUNC18(ct, COL_NAME, name);
	    FUNC18(ct, COL_CACHENAME,
				  FUNC10(context, id));
	    if (expired)
		str = FUNC0(">>> Expired <<<", "");
	    else
		str = FUNC16(t);
	    FUNC18(ct, COL_EXPIRES, str);
	    FUNC2(name);

	    ret = FUNC9(context, id, &fname);
	    if (ret)
		FUNC12 (context, 1, ret, "krb5_cc_get_full_name");

	    if (FUNC24(fname, def_name) == 0)
		FUNC18(ct, COL_DEFCACHE, "*");
	    else
		FUNC18(ct, COL_DEFCACHE, "");

	    FUNC15(fname);
	}
	FUNC6(context, id);

	FUNC14(context, principal);
    }

    FUNC3(context, cursor);

    FUNC2(def_name);
    FUNC21(ct, stdout);
    FUNC20(ct);

    return 0;
}