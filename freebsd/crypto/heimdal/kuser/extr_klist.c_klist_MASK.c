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
struct klist_options {scalar_t__ verbose_flag; scalar_t__ v5_flag; scalar_t__ tokens_flag; int /*<<< orphan*/  hidden_flag; int /*<<< orphan*/  flags_flag; int /*<<< orphan*/  cache_string; scalar_t__ all_content_flag; scalar_t__ list_all_flag; scalar_t__ s_flag; scalar_t__ test_flag; scalar_t__ n_flag; scalar_t__ a_flag; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/  krb5_cc_cache_cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  kcc_context ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int
FUNC11(struct klist_options *opt, int argc, char **argv)
{
    krb5_error_code ret;
    int exit_status = 0;

    int do_verbose =
	opt->verbose_flag ||
	opt->a_flag ||
	opt->n_flag;
    int do_test =
	opt->test_flag ||
	opt->s_flag;

    if (opt->list_all_flag) {
	exit_status = FUNC9(kcc_context);
	return exit_status;
    }

    if (opt->v5_flag) {
	krb5_ccache id;

	if (opt->all_content_flag) {
	    krb5_cc_cache_cursor cursor;

	    ret = FUNC4(kcc_context, NULL, &cursor);
	    if (ret)
		FUNC8(kcc_context, 1, ret, "krb5_cc_cache_get_first");


	    while (FUNC5(kcc_context, cursor, &id) == 0) {
		exit_status |= FUNC1(kcc_context, id, do_test,
						 do_verbose, opt->flags_flag,
						 opt->hidden_flag);
		FUNC10("\n\n");
	    }
	    FUNC3(kcc_context, cursor);

	} else {
	    if(opt->cache_string) {
		ret = FUNC7(kcc_context, opt->cache_string, &id);
		if (ret)
		    FUNC8(kcc_context, 1, ret, "%s", opt->cache_string);
	    } else {
		ret = FUNC6(kcc_context, &id);
		if (ret)
		    FUNC8(kcc_context, 1, ret, "krb5_cc_resolve");
	    }
	    exit_status = FUNC1(kcc_context, id, do_test,
					    do_verbose, opt->flags_flag,
					    opt->hidden_flag);
	}
    }

    if (!do_test) {
#ifndef NO_AFS
	if (opt->tokens_flag && FUNC2()) {
	    if (opt->v5_flag)
		FUNC10("\n");
	    FUNC0(opt->verbose_flag);
	}
#endif
    }

    return exit_status;
}