
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;


 int _krb5_expand_path_tokens (int ,char const*,char**) ;

krb5_error_code
_krb5_expand_default_cc_name(krb5_context context, const char *str, char **res)
{
    return _krb5_expand_path_tokens(context, str, res);
}
