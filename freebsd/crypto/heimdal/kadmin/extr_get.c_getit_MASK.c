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
struct get_options {int long_flag; int short_flag; int terse_flag; int /*<<< orphan*/ * column_info_string; } ;
struct get_entry_data {int /*<<< orphan*/ * table; int /*<<< orphan*/  format; scalar_t__ extra_mask; scalar_t__ mask; int /*<<< orphan*/ * chead; int /*<<< orphan*/ ** ctail; } ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/ * DEFAULT_COLUMNS_LONG ; 
 int /*<<< orphan*/ * DEFAULT_COLUMNS_SHORT ; 
 int /*<<< orphan*/  do_get_entry ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,char const*,struct get_entry_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct get_entry_data*) ; 
 int FUNC2 (char const*,int,char**) ; 
 int /*<<< orphan*/  print_entry_long ; 
 int /*<<< orphan*/  print_entry_short ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (struct get_entry_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC8(struct get_options *opt, const char *name, int argc, char **argv)
{
    int i;
    krb5_error_code ret;
    struct get_entry_data data;

    if(opt->long_flag == -1 && (opt->short_flag == 1 || opt->terse_flag == 1))
	opt->long_flag = 0;
    if(opt->short_flag == -1 && (opt->long_flag == 1 || opt->terse_flag == 1))
	opt->short_flag = 0;
    if(opt->terse_flag == -1 && (opt->long_flag == 1 || opt->short_flag == 1))
	opt->terse_flag = 0;
    if(opt->long_flag == 0 && opt->short_flag == 0 && opt->terse_flag == 0)
	opt->short_flag = 1;

    if (opt->terse_flag)
        return FUNC2(name, argc, argv);

    data.table = NULL;
    data.chead = NULL;
    data.ctail = &data.chead;
    data.mask = 0;
    data.extra_mask = 0;

    if(opt->short_flag) {
	data.table = FUNC3();
	FUNC6(data.table, "  ");
	data.format = print_entry_short;
    } else
	data.format = print_entry_long;
    if(opt->column_info_string == NULL) {
	if(opt->long_flag)
	    ret = FUNC7(&data, DEFAULT_COLUMNS_LONG);
	else
	    ret = FUNC7(&data, DEFAULT_COLUMNS_SHORT);
    } else
	ret = FUNC7(&data, opt->column_info_string);

    if(ret != 0) {
	if(data.table != NULL)
	    FUNC4(data.table);
	return 0;
    }

    for(i = 0; i < argc; i++)
	ret = FUNC0(argv[i], do_get_entry, name, &data);

    if(data.table != NULL) {
	FUNC5(data.table, stdout);
	FUNC4(data.table);
    }
    FUNC1(&data);
    return ret != 0;
}