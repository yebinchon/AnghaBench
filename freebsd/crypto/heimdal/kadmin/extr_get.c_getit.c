
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_options {int long_flag; int short_flag; int terse_flag; int * column_info_string; } ;
struct get_entry_data {int * table; int format; scalar_t__ extra_mask; scalar_t__ mask; int * chead; int ** ctail; } ;
typedef scalar_t__ krb5_error_code ;


 int * DEFAULT_COLUMNS_LONG ;
 int * DEFAULT_COLUMNS_SHORT ;
 int do_get_entry ;
 scalar_t__ foreach_principal (char*,int ,char const*,struct get_entry_data*) ;
 int free_columns (struct get_entry_data*) ;
 int listit (char const*,int,char**) ;
 int print_entry_long ;
 int print_entry_short ;
 int * rtbl_create () ;
 int rtbl_destroy (int *) ;
 int rtbl_format (int *,int ) ;
 int rtbl_set_separator (int *,char*) ;
 scalar_t__ setup_columns (struct get_entry_data*,int *) ;
 int stdout ;

__attribute__((used)) static int
getit(struct get_options *opt, const char *name, int argc, char **argv)
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
        return listit(name, argc, argv);

    data.table = ((void*)0);
    data.chead = ((void*)0);
    data.ctail = &data.chead;
    data.mask = 0;
    data.extra_mask = 0;

    if(opt->short_flag) {
 data.table = rtbl_create();
 rtbl_set_separator(data.table, "  ");
 data.format = print_entry_short;
    } else
 data.format = print_entry_long;
    if(opt->column_info_string == ((void*)0)) {
 if(opt->long_flag)
     ret = setup_columns(&data, DEFAULT_COLUMNS_LONG);
 else
     ret = setup_columns(&data, DEFAULT_COLUMNS_SHORT);
    } else
 ret = setup_columns(&data, opt->column_info_string);

    if(ret != 0) {
 if(data.table != ((void*)0))
     rtbl_destroy(data.table);
 return 0;
    }

    for(i = 0; i < argc; i++)
 ret = foreach_principal(argv[i], do_get_entry, name, &data);

    if(data.table != ((void*)0)) {
 rtbl_format(data.table, stdout);
 rtbl_destroy(data.table);
    }
    free_columns(&data);
    return ret != 0;
}
