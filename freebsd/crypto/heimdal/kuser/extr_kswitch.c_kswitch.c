
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kswitch_options {scalar_t__ cache_string; int type_string; int principal_string; scalar_t__ interactive_flag; } ;
typedef int rtbl_t ;
typedef int num ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int * krb5_ccache ;
struct TYPE_3__ {int prefix; } ;
typedef TYPE_1__ krb5_cc_ops ;
typedef int krb5_cc_cache_cursor ;
typedef int ids ;


 char* N_ (char*,char*) ;
 int asprintf (char**,char*,int ,scalar_t__) ;
 size_t atoi (char*) ;
 int ** erealloc (int **,size_t) ;
 int free (char*) ;
 int kcc_context ;
 int krb5_cc_cache_end_seq_get (int ,int ) ;
 scalar_t__ krb5_cc_cache_get_first (int ,int *,int *) ;
 scalar_t__ krb5_cc_cache_match (int ,int ,int **) ;
 scalar_t__ krb5_cc_cache_next (int ,int ,int **) ;
 int krb5_cc_close (int ,int *) ;
 TYPE_1__* krb5_cc_get_prefix_ops (int ,int ) ;
 scalar_t__ krb5_cc_get_principal (int ,int *,int *) ;
 char* krb5_cc_get_type (int ,int *) ;
 scalar_t__ krb5_cc_resolve (int ,char*,int **) ;
 scalar_t__ krb5_cc_switch (int ,int *) ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_errx (int ,int,char*,...) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_parse_name (int ,int ,int *) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 char* readline (char*) ;
 int rtbl_add_column_by_id (int ,int,char*,int ) ;
 int rtbl_add_column_entry_by_id (int ,int,char*) ;
 int rtbl_create () ;
 int rtbl_destroy (int ) ;
 int rtbl_format (int ,int ) ;
 int rtbl_set_column_affix_by_id (int ,int,char*,char*) ;
 int snprintf (char*,int,char*,int) ;
 int stdout ;

int
kswitch(struct kswitch_options *opt, int argc, char **argv)
{
    krb5_error_code ret;
    krb5_ccache id = ((void*)0);

    if (opt->cache_string && opt->principal_string)
 krb5_errx(kcc_context, 1,
    N_("Both --cache and --principal given, choose one", ""));

    if (opt->interactive_flag) {
 krb5_cc_cache_cursor cursor;
 krb5_ccache *ids = ((void*)0);
 size_t i, len = 0;
 char *name;
 rtbl_t ct;

 ct = rtbl_create();

 rtbl_add_column_by_id(ct, 0, "#", 0);
 rtbl_add_column_by_id(ct, 1, "Principal", 0);
 rtbl_set_column_affix_by_id(ct, 1, "    ", "");
        rtbl_add_column_by_id(ct, 2, "Type", 0);
        rtbl_set_column_affix_by_id(ct, 2, "  ", "");

 ret = krb5_cc_cache_get_first(kcc_context, ((void*)0), &cursor);
 if (ret)
     krb5_err(kcc_context, 1, ret, "krb5_cc_cache_get_first");

 while (krb5_cc_cache_next(kcc_context, cursor, &id) == 0) {
     krb5_principal p;
     char num[10];

     ret = krb5_cc_get_principal(kcc_context, id, &p);
     if (ret)
  continue;

     ret = krb5_unparse_name(kcc_context, p, &name);
     krb5_free_principal(kcc_context, p);

     snprintf(num, sizeof(num), "%d", (int)(len + 1));
     rtbl_add_column_entry_by_id(ct, 0, num);
     rtbl_add_column_entry_by_id(ct, 1, name);
            rtbl_add_column_entry_by_id(ct, 2, krb5_cc_get_type(kcc_context, id));
     free(name);

     ids = erealloc(ids, (len + 1) * sizeof(ids[0]));
     ids[len] = id;
     len++;
 }
 krb5_cc_cache_end_seq_get(kcc_context, cursor);

 rtbl_format(ct, stdout);
 rtbl_destroy(ct);

 name = readline("Select number: ");
 if (name) {
     i = atoi(name);
     if (i == 0)
  krb5_errx(kcc_context, 1, "Cache number '%s' is invalid", name);
     if (i > len)
  krb5_errx(kcc_context, 1, "Cache number '%s' is too large", name);

     id = ids[i - 1];
     ids[i - 1] = ((void*)0);
 } else
     krb5_errx(kcc_context, 1, "No cache selected");
 for (i = 0; i < len; i++)
     if (ids[i])
  krb5_cc_close(kcc_context, ids[i]);

    } else if (opt->principal_string) {
 krb5_principal p;

 ret = krb5_parse_name(kcc_context, opt->principal_string, &p);
 if (ret)
     krb5_err(kcc_context, 1, ret, "krb5_parse_name: %s",
       opt->principal_string);

 ret = krb5_cc_cache_match(kcc_context, p, &id);
 if (ret)
     krb5_err(kcc_context, 1, ret,
       N_("Did not find principal: %s", ""),
       opt->principal_string);

 krb5_free_principal(kcc_context, p);

    } else if (opt->cache_string) {
 const krb5_cc_ops *ops;
 char *str;

 ops = krb5_cc_get_prefix_ops(kcc_context, opt->type_string);
 if (ops == ((void*)0))
     krb5_err(kcc_context, 1, 0, "krb5_cc_get_prefix_ops");

 asprintf(&str, "%s:%s", ops->prefix, opt->cache_string);
 if (str == ((void*)0))
     krb5_errx(kcc_context, 1, N_("out of memory", ""));

 ret = krb5_cc_resolve(kcc_context, str, &id);
 if (ret)
     krb5_err(kcc_context, 1, ret, "krb5_cc_resolve: %s", str);

 free(str);
    } else {
 krb5_errx(kcc_context, 1, "missing option for kswitch");
    }

    ret = krb5_cc_switch(kcc_context, id);
    if (ret)
 krb5_err(kcc_context, 1, ret, "krb5_cc_switch");

    return 0;
}
