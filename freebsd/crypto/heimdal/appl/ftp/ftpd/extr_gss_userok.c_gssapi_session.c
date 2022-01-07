
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gssapi_data {scalar_t__ delegated_cred_handle; } ;
typedef int OM_uint32 ;


 int GSS_C_INITIATE ;
 scalar_t__ GSS_C_NO_CREDENTIAL ;
 int GSS_C_NO_OID ;
 scalar_t__ GSS_ERROR (int ) ;
 int afslog (int *,int) ;
 int gss_release_cred (int *,scalar_t__*) ;
 int gss_store_cred (int *,scalar_t__,int ,int ,int,int,int *,int *) ;

int
gssapi_session(void *app_data, char *username)
{
    struct gssapi_data *data = app_data;
    OM_uint32 major, minor;
    int ret = 0;

    if (data->delegated_cred_handle != GSS_C_NO_CREDENTIAL) {
        major = gss_store_cred(&minor, data->delegated_cred_handle,
                               GSS_C_INITIATE, GSS_C_NO_OID,
                               1, 1, ((void*)0), ((void*)0));
        if (GSS_ERROR(major))
            ret = 1;
 afslog(((void*)0), 1);
    }

    gss_release_cred(&minor, &data->delegated_cred_handle);
    return ret;
}
