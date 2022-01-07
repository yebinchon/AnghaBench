
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 scalar_t__ add_verifier (int ,char const*) ;
 char** krb5_config_get_strings (int ,int *,char*,char*,int *) ;

krb5_error_code
kadm5_add_passwd_quality_verifier(krb5_context context,
      const char *check_library)
{
    return 0;

}
