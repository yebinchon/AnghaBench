
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pwbuf ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;


 scalar_t__ UI_UTIL_read_pw_string (char*,int,char*,int) ;
 int asprintf (char**,char*,char*) ;
 int context ;
 int free (char*) ;
 scalar_t__ kadm5_chpass_principal (int ,int ,char*) ;
 int kadm_handle ;
 int krb5_unparse_name (int ,int ,char**) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int
set_password (krb5_principal principal, char *password)
{
    krb5_error_code ret = 0;
    char pwbuf[128];

    if(password == ((void*)0)) {
 char *princ_name;
 char *prompt;

 krb5_unparse_name(context, principal, &princ_name);
 asprintf(&prompt, "%s's Password: ", princ_name);
 free (princ_name);
 ret = UI_UTIL_read_pw_string(pwbuf, sizeof(pwbuf), prompt, 1);
 free (prompt);
 if(ret){
     return 0;
 }
 password = pwbuf;
    }
    if(ret == 0)
 ret = kadm5_chpass_principal(kadm_handle, principal, password);
    memset(pwbuf, 0, sizeof(pwbuf));
    return ret;
}
