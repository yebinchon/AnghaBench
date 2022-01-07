
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_3__ {int length; int * data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;


 int args ;
 int exit (int ) ;
 scalar_t__ help_flag ;
 scalar_t__ kadm5_add_passwd_quality_verifier (int ,int *) ;
 char* kadm5_check_password_quality (int ,int ,TYPE_1__*) ;
 int kadm5_setup_passwd_quality_check (int ,int *,int *) ;
 int krb5_errx (int ,int,char*,...) ;
 int krb5_free_context (int ) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_parse_name (int ,char const*,int *) ;
 int krb5_program_setup (int *,int,char**,int ,int ,int *) ;
 int krb5_std_usage (int ,int ,int ) ;
 int num_args ;
 int * password ;
 char const* principal ;
 int print_version (int *) ;
 int strlen (int *) ;
 scalar_t__ version_flag ;

int
main(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_principal p;
    const char *s;
    krb5_data pw_data;

    krb5_program_setup(&context, argc, argv, args, num_args, ((void*)0));

    if(help_flag)
 krb5_std_usage(0, args, num_args);
    if(version_flag) {
 print_version(((void*)0));
 exit(0);
    }

    if (principal == ((void*)0))
 krb5_errx(context, 1, "no principal given");
    if (password == ((void*)0))
 krb5_errx(context, 1, "no password given");

    ret = krb5_parse_name(context, principal, &p);
    if (ret)
 krb5_errx(context, 1, "krb5_parse_name: %s", principal);

    pw_data.data = password;
    pw_data.length = strlen(password);

    kadm5_setup_passwd_quality_check (context, ((void*)0), ((void*)0));
    ret = kadm5_add_passwd_quality_verifier(context, ((void*)0));
    if (ret)
 krb5_errx(context, 1, "kadm5_add_passwd_quality_verifier");

    s = kadm5_check_password_quality (context, p, &pw_data);
    if (s)
 krb5_errx(context, 1, "kadm5_check_password_quality:\n%s", s);

    krb5_free_principal(context, p);
    krb5_free_context(context);

    return 0;
}
