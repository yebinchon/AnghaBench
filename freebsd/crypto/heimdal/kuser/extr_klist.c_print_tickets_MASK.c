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
typedef  int /*<<< orphan*/ * rtbl_t ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  scalar_t__ krb5_deltat ;
struct TYPE_6__ {int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/  krb5_cc_cursor ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  COL_EXPIRES ; 
 int /*<<< orphan*/  COL_FLAGS ; 
 int /*<<< orphan*/  COL_ISSUED ; 
 int /*<<< orphan*/  COL_PRINCIPAL ; 
 scalar_t__ KRB5_CC_END ; 
 int /*<<< orphan*/  KRB5_TC_NOTICKET ; 
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (int,char*,int) ; 

__attribute__((used)) static void
FUNC25 (krb5_context context,
	       krb5_ccache ccache,
	       krb5_principal principal,
	       int do_verbose,
	       int do_flags,
	       int do_hidden)
{
    krb5_error_code ret;
    char *str, *name;
    krb5_cc_cursor cursor;
    krb5_creds creds;
    krb5_deltat sec;

    rtbl_t ct = NULL;

    ret = FUNC14 (context, principal, &str);
    if (ret)
	FUNC11 (context, 1, ret, "krb5_unparse_name");

    FUNC17 ("%17s: %s:%s\n",
	    FUNC0("Credentials cache", ""),
	    FUNC6(context, ccache),
	    FUNC5(context, ccache));
    FUNC17 ("%17s: %s\n", FUNC0("Principal", ""), str);

    ret = FUNC3(context, ccache, &name);
    if (ret == 0) {
	if (FUNC23(name, str) != 0)
	    FUNC17 ("%17s: %s\n", FUNC0("Friendly name", ""), name);
	FUNC1(name);
    }
    FUNC1 (str);

    if(do_verbose) {
	FUNC17 ("%17s: %d\n", FUNC0("Cache version", ""),
		FUNC7(context, ccache));
    } else {
        FUNC9(context, ccache, KRB5_TC_NOTICKET);
    }

    ret = FUNC4(context, ccache, &sec);

    if (ret == 0 && do_verbose && sec != 0) {
	char buf[BUFSIZ];
	int val;
	int sig;

	val = sec;
	sig = 1;
	if (val < 0) {
	    sig = -1;
	    val = -val;
	}

	FUNC24 (val, buf, sizeof(buf));

	FUNC17 ("%17s: %s%s\n", FUNC0("KDC time offset", ""),
		sig == -1 ? "-" : "", buf);
    }

    FUNC17("\n");

    ret = FUNC10 (context, ccache, &cursor);
    if (ret)
	FUNC11(context, 1, ret, "krb5_cc_start_seq_get");

    if(!do_verbose) {
	ct = FUNC19();
	FUNC18(ct, COL_ISSUED, 0);
	FUNC18(ct, COL_EXPIRES, 0);
	if(do_flags)
	    FUNC18(ct, COL_FLAGS, 0);
	FUNC18(ct, COL_PRINCIPAL, 0);
	FUNC22(ct, "  ");
    }
    while ((ret = FUNC8 (context,
				     ccache,
				     &cursor,
				     &creds)) == 0) {
	if (!do_hidden && FUNC13(context, creds.server)) {
	    ;
	}else if(do_verbose){
	    FUNC16(context, &creds);
	}else{
	    FUNC15(context, &creds, ct, do_flags);
	}
	FUNC12 (context, &creds);
    }
    if(ret != KRB5_CC_END)
	FUNC11(context, 1, ret, "krb5_cc_get_next");
    ret = FUNC2 (context, ccache, &cursor);
    if (ret)
	FUNC11 (context, 1, ret, "krb5_cc_end_seq_get");
    if(!do_verbose) {
	FUNC21(ct, stdout);
	FUNC20(ct);
    }
}