
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_3__ {char* data; int length; } ;
typedef TYPE_1__ krb5_data ;


 int context ;
 char* kadm5_check_password_quality (int ,int ,TYPE_1__*) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_parse_name (int ,char*,int *) ;
 int krb5_warn (int ,scalar_t__,char*,char*) ;
 int krb5_warnx (int ,char*,char const*) ;
 int strlen (char*) ;

int
password_quality(void *opt, int argc, char **argv)
{
    krb5_error_code ret;
    krb5_principal principal;
    krb5_data pw_data;
    const char *s;

    ret = krb5_parse_name(context, argv[0], &principal);
    if(ret){
 krb5_warn(context, ret, "krb5_parse_name(%s)", argv[0]);
 return 0;
    }
    pw_data.data = argv[1];
    pw_data.length = strlen(argv[1]);

    s = kadm5_check_password_quality (context, principal, &pw_data);
    if (s)
 krb5_warnx(context, "kadm5_check_password_quality: %s", s);

    krb5_free_principal(context, principal);

    return 0;
}
