
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_cccol_cursor ;
typedef int * krb5_ccache ;


 scalar_t__ debug_flag ;
 int free (char*) ;
 int krb5_cc_close (int ,int *) ;
 char* krb5_cc_get_name (int ,int *) ;
 scalar_t__ krb5_cc_get_principal (int ,int *,int *) ;
 int krb5_cccol_cursor_free (int ,int *) ;
 scalar_t__ krb5_cccol_cursor_new (int ,int *) ;
 scalar_t__ krb5_cccol_cursor_next (int ,int ,int **) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
test_cache_iter_all(krb5_context context)
{
    krb5_cccol_cursor cursor;
    krb5_error_code ret;
    krb5_ccache id;

    ret = krb5_cccol_cursor_new (context, &cursor);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cccol_cursor_new");


    while ((ret = krb5_cccol_cursor_next (context, cursor, &id)) == 0 && id != ((void*)0)) {
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
 krb5_cc_close(context, id);
    }

    krb5_cccol_cursor_free(context, &cursor);
}
