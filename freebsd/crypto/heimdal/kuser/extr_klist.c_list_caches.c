
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int rtbl_t ;
typedef int * krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int krb5_cc_cache_cursor ;


 int COL_CACHENAME ;
 int COL_DEFCACHE ;
 int COL_EXPIRES ;
 int COL_NAME ;
 scalar_t__ KRB5_CC_NOSUPP ;
 char* N_ (char*,char*) ;
 int check_for_tgt (int ,int ,int *,int *) ;
 int free (char*) ;
 int krb5_cc_cache_end_seq_get (int ,int ) ;
 scalar_t__ krb5_cc_cache_get_first (int ,int *,int *) ;
 scalar_t__ krb5_cc_cache_next (int ,int ,int *) ;
 int krb5_cc_close (int ,int ) ;
 char* krb5_cc_default_name (int ) ;
 scalar_t__ krb5_cc_get_friendly_name (int ,int ,char**) ;
 scalar_t__ krb5_cc_get_full_name (int ,int ,char**) ;
 char* krb5_cc_get_name (int ,int ) ;
 scalar_t__ krb5_cc_get_principal (int ,int ,int **) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_free_principal (int ,int *) ;
 int krb5_xfree (char*) ;
 char* printable_time (int ) ;
 int rtbl_add_column (int ,int ,int ) ;
 int rtbl_add_column_entry (int ,int ,char const*) ;
 int rtbl_create () ;
 int rtbl_destroy (int ) ;
 int rtbl_format (int ,int ) ;
 int rtbl_set_column_prefix (int ,int ,char*) ;
 int rtbl_set_prefix (int ,char*) ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
list_caches(krb5_context context)
{
    krb5_cc_cache_cursor cursor;
    const char *cdef_name;
    char *def_name;
    krb5_error_code ret;
    krb5_ccache id;
    rtbl_t ct;

    cdef_name = krb5_cc_default_name(context);
    if (cdef_name == ((void*)0))
 krb5_errx(context, 1, "krb5_cc_default_name");
    def_name = strdup(cdef_name);

    ret = krb5_cc_cache_get_first (context, ((void*)0), &cursor);
    if (ret == KRB5_CC_NOSUPP)
 return 0;
    else if (ret)
 krb5_err (context, 1, ret, "krb5_cc_cache_get_first");

    ct = rtbl_create();
    rtbl_add_column(ct, COL_NAME, 0);
    rtbl_add_column(ct, COL_CACHENAME, 0);
    rtbl_add_column(ct, COL_EXPIRES, 0);
    rtbl_add_column(ct, COL_DEFCACHE, 0);
    rtbl_set_prefix(ct, "   ");
    rtbl_set_column_prefix(ct, COL_NAME, "");

    while (krb5_cc_cache_next (context, cursor, &id) == 0) {
 krb5_principal principal = ((void*)0);
 int expired = 0;
 char *name;
 time_t t;

 ret = krb5_cc_get_principal(context, id, &principal);
 if (ret)
     continue;

 expired = check_for_tgt (context, id, principal, &t);

 ret = krb5_cc_get_friendly_name(context, id, &name);
 if (ret == 0) {
     const char *str;
     char *fname;
     rtbl_add_column_entry(ct, COL_NAME, name);
     rtbl_add_column_entry(ct, COL_CACHENAME,
      krb5_cc_get_name(context, id));
     if (expired)
  str = N_(">>> Expired <<<", "");
     else
  str = printable_time(t);
     rtbl_add_column_entry(ct, COL_EXPIRES, str);
     free(name);

     ret = krb5_cc_get_full_name(context, id, &fname);
     if (ret)
  krb5_err (context, 1, ret, "krb5_cc_get_full_name");

     if (strcmp(fname, def_name) == 0)
  rtbl_add_column_entry(ct, COL_DEFCACHE, "*");
     else
  rtbl_add_column_entry(ct, COL_DEFCACHE, "");

     krb5_xfree(fname);
 }
 krb5_cc_close(context, id);

 krb5_free_principal(context, principal);
    }

    krb5_cc_cache_end_seq_get(context, cursor);

    free(def_name);
    rtbl_format(ct, stdout);
    rtbl_destroy(ct);

    return 0;
}
