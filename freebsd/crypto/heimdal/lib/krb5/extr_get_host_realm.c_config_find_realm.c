
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* krb5_realm ;
typedef int krb5_context ;


 char** krb5_config_get_strings (int ,int *,char*,char const*,int *) ;

__attribute__((used)) static int
config_find_realm(krb5_context context,
    const char *domain,
    krb5_realm **realms)
{
    char **tmp = krb5_config_get_strings (context, ((void*)0),
       "domain_realm",
       domain,
       ((void*)0));

    if (tmp == ((void*)0))
 return -1;
    *realms = tmp;
    return 0;
}
