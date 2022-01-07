
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int krb5_cc_cache_cursor ;


 scalar_t__ KRB5_CC_NOSUPP ;
 scalar_t__ debug_flag ;
 int free (char*) ;
 int krb5_cc_cache_end_seq_get (int ,int ) ;
 scalar_t__ krb5_cc_cache_get_first (int ,char const*,int *) ;
 scalar_t__ krb5_cc_cache_next (int ,int ,int *) ;
 int krb5_cc_close (int ,int ) ;
 int krb5_cc_destroy (int ,int ) ;
 char* krb5_cc_get_name (int ,int ) ;
 scalar_t__ krb5_cc_get_principal (int ,int ,int *) ;
 int krb5_err (int ,int,scalar_t__,char*,char const*) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
test_cache_iter(krb5_context context, const char *type, int destroy)
{
    krb5_cc_cache_cursor cursor;
    krb5_error_code ret;
    krb5_ccache id;

    ret = krb5_cc_cache_get_first (context, type, &cursor);
    if (ret == KRB5_CC_NOSUPP)
 return;
    else if (ret)
 krb5_err(context, 1, ret, "krb5_cc_cache_get_first(%s)", type);


    while ((ret = krb5_cc_cache_next (context, cursor, &id)) == 0) {
 krb5_principal principal;
 char *name;

 if (debug_flag)
     printf("name: %s\n", krb5_cc_get_name(context, id));
 ret = krb5_cc_get_principal(context, id, &principal);
 if (ret == 0) {
     ret = krb5_unparse_name(context, principal, &name);
     if (ret == 0) {
  if (debug_flag)
      printf("\tprincipal: %s\n", name);
  free(name);
     }
     krb5_free_principal(context, principal);
 }
 if (destroy)
     krb5_cc_destroy(context, id);
 else
     krb5_cc_close(context, id);
    }

    krb5_cc_cache_end_seq_get(context, cursor);
}
