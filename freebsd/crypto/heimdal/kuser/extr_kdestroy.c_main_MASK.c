#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ krb5_error_code ;
struct TYPE_4__ {int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_cccol_cursor ;
typedef  int /*<<< orphan*/ * krb5_ccache ;

/* Variables and functions */
 scalar_t__ all_flag ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/ * cache ; 
 scalar_t__ credential ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 scalar_t__ help_flag ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 scalar_t__ unlog_flag ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 scalar_t__ version_flag ; 

int
FUNC23 (int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_ccache  ccache;
    int optidx = 0;
    int exit_val = 0;

    FUNC21 (argv[0]);

    if(FUNC2(args, num_args, argc, argv, &optidx))
	FUNC22(1);

    if (help_flag)
	FUNC22 (0);

    if(version_flag){
	FUNC20(NULL);
	FUNC1(0);
    }

    argc -= optidx;
    argv += optidx;

    if (argc != 0)
	FUNC22 (1);

    ret = FUNC17 (&context);
    if (ret)
	FUNC0 (1, "krb5_init_context failed: %d", ret);

    if (all_flag) {
	krb5_cccol_cursor cursor;

	ret = FUNC12 (context, &cursor);
	if (ret)
	    FUNC14(context, 1, ret, "krb5_cccol_cursor_new");

	while (FUNC13 (context, cursor, &ccache) == 0 && ccache != NULL) {

	    ret = FUNC8 (context, ccache);
	    if (ret) {
		FUNC19(context, ret, "krb5_cc_destroy");
		exit_val = 1;
	    }
	}
	FUNC11(context, &cursor);

    } else {
	if(cache == NULL) {
	    ret = FUNC7(context, &ccache);
	    if (ret)
		FUNC14(context, 1, ret, "krb5_cc_default");
	} else {
	    ret =  FUNC10(context,
				   cache,
				   &ccache);
	    if (ret)
		FUNC14(context, 1, ret, "krb5_cc_resolve");
	}

	if (ret == 0) {
	    if (credential) {
		krb5_creds mcred;

		FUNC5(&mcred);

		ret = FUNC18(context, credential, &mcred.server);
		if (ret)
		    FUNC14(context, 1, ret,
			     "Can't parse principal %s", credential);

		ret = FUNC9(context, ccache, 0, &mcred);
		if (ret)
		    FUNC14(context, 1, ret,
			     "Failed to remove principal %s", credential);

		FUNC6(context, ccache);
		FUNC16(context, mcred.server);
		FUNC15(context);
		return 0;
	    }

	    ret = FUNC8 (context, ccache);
	    if (ret) {
		FUNC19(context, ret, "krb5_cc_destroy");
		exit_val = 1;
	    }
	}
    }

    FUNC15 (context);

#ifndef NO_AFS
    if (unlog_flag && FUNC3 ()) {
	if (FUNC4 ())
	    exit_val = 1;
    }
#endif

    return exit_val;
}