
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 scalar_t__ debug_flag ;
 int free (char*) ;
 int krb5_err (int ,int,scalar_t__,char*,char const*) ;
 scalar_t__ krb5_expand_hostname (int ,char const*,char**) ;
 scalar_t__ krb5_expand_hostname_realms (int ,char const*,char**,char***) ;
 int krb5_free_host_realm (int ,char**) ;
 int printf (char*,char const*,...) ;

__attribute__((used)) static int
expand_hostname(krb5_context context, const char *host)
{
    krb5_error_code ret;
    char *h, **r;

    ret = krb5_expand_hostname(context, host, &h);
    if (ret)
 krb5_err(context, 1, ret, "krb5_expand_hostname(%s)", host);

    free(h);

    if (debug_flag)
 printf("hostname: %s -> %s\n", host, h);

    ret = krb5_expand_hostname_realms(context, host, &h, &r);
    if (ret)
 krb5_err(context, 1, ret, "krb5_expand_hostname_realms(%s)", host);

    if (debug_flag) {
 int j;

 printf("hostname: %s -> %s\n", host, h);
 for (j = 0; r[j]; j++) {
     printf("\trealm: %s\n", r[j]);
 }
    }
    free(h);
    krb5_free_host_realm(context, r);

    return 0;
}
