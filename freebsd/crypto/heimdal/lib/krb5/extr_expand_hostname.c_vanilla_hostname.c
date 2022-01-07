
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 scalar_t__ copy_hostname (int ,char const*,char**) ;
 int free (char*) ;
 scalar_t__ krb5_get_host_realm (int ,char*,char***) ;
 int strlwr (char*) ;

__attribute__((used)) static krb5_error_code
vanilla_hostname (krb5_context context,
    const char *orig_hostname,
    char **new_hostname,
    char ***realms)
{
    krb5_error_code ret;

    ret = copy_hostname (context, orig_hostname, new_hostname);
    if (ret)
 return ret;
    strlwr (*new_hostname);

    ret = krb5_get_host_realm (context, *new_hostname, realms);
    if (ret) {
 free (*new_hostname);
 return ret;
    }
    return 0;
}
