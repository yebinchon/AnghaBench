
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef int krb5_principal ;
typedef int krb5_data ;
typedef scalar_t__ kadm5_ret_t ;
typedef int kadm5_client_context ;
typedef scalar_t__ int32_t ;
typedef int buf ;


 scalar_t__ ENOMEM ;
 scalar_t__ _kadm5_client_recv (int *,int *) ;
 scalar_t__ _kadm5_client_send (int *,int *) ;
 scalar_t__ _kadm5_connect (void*) ;
 int kadm_rename ;
 int krb5_data_free (int *) ;
 int krb5_ret_int32 (int *,scalar_t__*) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_data (int *) ;
 int * krb5_storage_from_mem (unsigned char*,int) ;
 int krb5_store_int32 (int *,int ) ;
 int krb5_store_principal (int *,int ) ;

kadm5_ret_t
kadm5_c_rename_principal(void *server_handle,
    krb5_principal source,
    krb5_principal target)
{
    kadm5_client_context *context = server_handle;
    kadm5_ret_t ret;
    krb5_storage *sp;
    unsigned char buf[1024];
    int32_t tmp;
    krb5_data reply;

    ret = _kadm5_connect(server_handle);
    if(ret)
 return ret;

    sp = krb5_storage_from_mem(buf, sizeof(buf));
    if (sp == ((void*)0))
 return ENOMEM;
    krb5_store_int32(sp, kadm_rename);
    krb5_store_principal(sp, source);
    krb5_store_principal(sp, target);
    ret = _kadm5_client_send(context, sp);
    krb5_storage_free(sp);
    if (ret)
 return ret;
    ret = _kadm5_client_recv(context, &reply);
    if(ret)
 return ret;
    sp = krb5_storage_from_data (&reply);
    if (sp == ((void*)0)) {
 krb5_data_free (&reply);
 return ENOMEM;
    }
    krb5_ret_int32(sp, &tmp);
    ret = tmp;
    krb5_storage_free(sp);
    krb5_data_free (&reply);
    return ret;
}
