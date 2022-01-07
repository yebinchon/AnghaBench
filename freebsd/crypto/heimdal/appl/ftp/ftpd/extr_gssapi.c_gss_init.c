
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gssapi_data {int delegated_cred_handle; int context_hdl; } ;


 int GSS_C_NO_CONTEXT ;
 int GSS_C_NO_CREDENTIAL ;
 int use_kerberos ;

__attribute__((used)) static int
gss_init(void *app_data)
{
    struct gssapi_data *d = app_data;
    d->context_hdl = GSS_C_NO_CONTEXT;
    d->delegated_cred_handle = GSS_C_NO_CREDENTIAL;







    return 0;


}
