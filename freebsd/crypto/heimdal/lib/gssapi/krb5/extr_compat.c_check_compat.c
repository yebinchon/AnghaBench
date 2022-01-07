
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_const_principal ;
typedef int krb5_boolean ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_FAILURE ;
 int krb5_config_free_strings (char**) ;
 char** krb5_config_get_strings (int ,int *,char*,char const*,int *) ;
 int krb5_free_principal (int ,int *) ;
 scalar_t__ krb5_parse_name (int ,char*,int **) ;
 scalar_t__ krb5_principal_match (int ,int ,int *) ;

__attribute__((used)) static krb5_error_code
check_compat(OM_uint32 *minor_status,
      krb5_context context, krb5_const_principal name,
      const char *option, krb5_boolean *compat,
      krb5_boolean match_val)
{
    krb5_error_code ret = 0;
    char **p, **q;
    krb5_principal match;


    p = krb5_config_get_strings(context, ((void*)0), "gssapi",
    option, ((void*)0));
    if(p == ((void*)0))
 return 0;

    match = ((void*)0);
    for(q = p; *q; q++) {
 ret = krb5_parse_name(context, *q, &match);
 if (ret)
     break;

 if (krb5_principal_match(context, name, match)) {
     *compat = match_val;
     break;
 }

 krb5_free_principal(context, match);
 match = ((void*)0);
    }
    if (match)
 krb5_free_principal(context, match);
    krb5_config_free_strings(p);

    if (ret) {
 if (minor_status)
     *minor_status = ret;
 return GSS_S_FAILURE;
    }

    return 0;
}
