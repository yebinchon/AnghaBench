
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* krb5_realm ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_boolean ;


 int FALSE ;
 int TRUE ;
 int krb5_free_host_realm (int ,char const**) ;
 scalar_t__ krb5_get_default_realms (int ,char const***) ;
 int * krb5_principal_get_comp_string (int ,int ,int) ;
 int * krb5_principal_get_realm (int ,int ) ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static krb5_boolean
match_local_principals(krb5_context context,
         krb5_principal principal,
         const char *luser)
{
    krb5_error_code ret;
    krb5_realm *realms, *r;
    krb5_boolean result = FALSE;


    if(krb5_principal_get_comp_string(context, principal, 1) != ((void*)0))
 return FALSE;

    ret = krb5_get_default_realms (context, &realms);
    if (ret)
 return FALSE;

    for (r = realms; *r != ((void*)0); ++r) {
 if(strcmp(krb5_principal_get_realm(context, principal),
    *r) != 0)
     continue;
 if(strcmp(krb5_principal_get_comp_string(context, principal, 0),
    luser) == 0) {
     result = TRUE;
     break;
 }
    }
    krb5_free_host_realm (context, realms);
    return result;
}
