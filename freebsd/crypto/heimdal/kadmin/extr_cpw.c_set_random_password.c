
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pw ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;


 int context ;
 int free (char*) ;
 scalar_t__ kadm5_chpass_principal (int ,int ,char*) ;
 int kadm_handle ;
 int krb5_unparse_name (int ,int ,char**) ;
 int memset (char*,int ,int) ;
 int printf (char*,char*,char*) ;
 int random_password (char*,int) ;

__attribute__((used)) static int
set_random_password (krb5_principal principal)
{
    krb5_error_code ret;
    char pw[128];

    random_password (pw, sizeof(pw));
    ret = kadm5_chpass_principal(kadm_handle, principal, pw);
    if (ret == 0) {
 char *princ_name;

 krb5_unparse_name(context, principal, &princ_name);

 printf ("%s's password set to \"%s\"\n", princ_name, pw);
 free (princ_name);
    }
    memset (pw, 0, sizeof(pw));
    return ret;
}
