
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 scalar_t__ ENOENT ;
 int N_ (char*,char*) ;
 int check_for_tgt (int ,int ,int ,int *) ;
 scalar_t__ krb5_cc_close (int ,int ) ;
 int krb5_cc_get_name (int ,int ) ;
 scalar_t__ krb5_cc_get_principal (int ,int ,int *) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_free_principal (int ,int ) ;
 int krb5_warnx (int ,int ,int ) ;
 int print_tickets (int ,int ,int ,int,int,int) ;

__attribute__((used)) static int
display_v5_ccache (krb5_context context, krb5_ccache ccache,
     int do_test, int do_verbose,
     int do_flags, int do_hidden)
{
    krb5_error_code ret;
    krb5_principal principal;
    int exit_status = 0;


    ret = krb5_cc_get_principal (context, ccache, &principal);
    if (ret) {
 if(ret == ENOENT) {
     if (!do_test)
  krb5_warnx(context, N_("No ticket file: %s", ""),
      krb5_cc_get_name(context, ccache));
     return 1;
 } else
     krb5_err (context, 1, ret, "krb5_cc_get_principal");
    }
    if (do_test)
 exit_status = check_for_tgt (context, ccache, principal, ((void*)0));
    else
 print_tickets (context, ccache, principal, do_verbose,
         do_flags, do_hidden);

    ret = krb5_cc_close (context, ccache);
    if (ret)
 krb5_err (context, 1, ret, "krb5_cc_close");

    krb5_free_principal (context, principal);

    return exit_status;
}
