
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ ENOMEM ;
 int GSSAPI_KRB5_INIT (int *) ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int free (char*) ;
 char* krb5_cc_default_name (int ) ;
 scalar_t__ krb5_cc_set_default_name (int ,char const*) ;
 char* last_out_name ;
 char* strdup (char const*) ;

OM_uint32
_gsskrb5_krb5_ccache_name(OM_uint32 *minor_status,
     const char *name,
     const char **out_name)
{
    krb5_context context;
    krb5_error_code kret;

    *minor_status = 0;

    GSSAPI_KRB5_INIT(&context);

    if (out_name) {
 const char *n;

 if (last_out_name) {
     free(last_out_name);
     last_out_name = ((void*)0);
 }

 n = krb5_cc_default_name(context);
 if (n == ((void*)0)) {
     *minor_status = ENOMEM;
     return GSS_S_FAILURE;
 }
 last_out_name = strdup(n);
 if (last_out_name == ((void*)0)) {
     *minor_status = ENOMEM;
     return GSS_S_FAILURE;
 }
 *out_name = last_out_name;
    }

    kret = krb5_cc_set_default_name(context, name);
    if (kret) {
 *minor_status = kret;
 return GSS_S_FAILURE;
    }
    return GSS_S_COMPLETE;
}
