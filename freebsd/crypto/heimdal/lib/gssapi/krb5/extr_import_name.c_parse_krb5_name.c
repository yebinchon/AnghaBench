
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef scalar_t__ gss_name_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_BAD_NAME ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ KRB5_PARSE_ILLCHAR ;
 scalar_t__ KRB5_PARSE_MALFORMED ;
 scalar_t__ krb5_parse_name (int ,char const*,scalar_t__*) ;

__attribute__((used)) static OM_uint32
parse_krb5_name (OM_uint32 *minor_status,
   krb5_context context,
   const char *name,
   gss_name_t *output_name)
{
    krb5_principal princ;
    krb5_error_code kerr;

    kerr = krb5_parse_name (context, name, &princ);

    if (kerr == 0) {
 *output_name = (gss_name_t)princ;
 return GSS_S_COMPLETE;
    }
    *minor_status = kerr;

    if (kerr == KRB5_PARSE_ILLCHAR || kerr == KRB5_PARSE_MALFORMED)
 return GSS_S_BAD_NAME;

    return GSS_S_FAILURE;
}
