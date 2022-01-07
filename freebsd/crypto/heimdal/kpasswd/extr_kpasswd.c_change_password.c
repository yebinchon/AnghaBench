
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int pwbuf ;
typedef int * krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_6__ {scalar_t__ length; scalar_t__ data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 int BUFSIZ ;
 scalar_t__ UI_UTIL_read_pw_string (char*,int,char*,int) ;
 int asprintf (char**,char*,...) ;
 int free (char*) ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_data_zero (TYPE_1__*) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*) ;
 char* krb5_passwd_result_to_string (int ,int) ;
 scalar_t__ krb5_set_password_using_ccache (int ,int ,char*,int *,int*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ krb5_unparse_name (int ,int *,char**) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 int printf (char*,char*,char*,int,char*) ;

__attribute__((used)) static int
change_password(krb5_context context,
  krb5_principal principal,
  krb5_ccache id)
{
    krb5_data result_code_string, result_string;
    int result_code;
    krb5_error_code ret;
    char pwbuf[BUFSIZ];
    char *msg, *name;

    krb5_data_zero (&result_code_string);
    krb5_data_zero (&result_string);

    name = msg = ((void*)0);
    if (principal == ((void*)0))
 asprintf(&msg, "New password: ");
    else {
 ret = krb5_unparse_name(context, principal, &name);
 if (ret)
     krb5_err(context, 1, ret, "krb5_unparse_name");

 asprintf(&msg, "New password for %s: ", name);
    }

    if (msg == ((void*)0))
 krb5_errx (context, 1, "out of memory");

    ret = UI_UTIL_read_pw_string (pwbuf, sizeof(pwbuf), msg, 1);
    free(msg);
    if (name)
 free(name);
    if (ret != 0) {
 return 1;
    }

    ret = krb5_set_password_using_ccache (context, id, pwbuf,
       principal,
       &result_code,
       &result_code_string,
       &result_string);
    if (ret) {
 krb5_warn (context, ret, "krb5_set_password_using_ccache");
 return 1;
    }

    printf ("%s%s%.*s\n", krb5_passwd_result_to_string(context, result_code),
     result_string.length > 0 ? " : " : "",
     (int)result_string.length,
     result_string.length > 0 ? (char *)result_string.data : "");

    krb5_data_free (&result_code_string);
    krb5_data_free (&result_string);

    return ret != 0;
}
