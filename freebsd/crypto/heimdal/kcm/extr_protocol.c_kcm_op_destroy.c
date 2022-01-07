
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
typedef int kcm_client ;


 int KCM_LOG_REQUEST_NAME (int ,int *,int ,char*) ;
 int free (char*) ;
 scalar_t__ kcm_ccache_destroy_client (int ,int *,char*) ;
 int kcm_drop_default_cache (int ,int *,char*) ;
 scalar_t__ krb5_ret_stringz (int *,char**) ;

__attribute__((used)) static krb5_error_code
kcm_op_destroy(krb5_context context,
        kcm_client *client,
        kcm_operation opcode,
        krb5_storage *request,
        krb5_storage *response)
{
    krb5_error_code ret;
    char *name;

    ret = krb5_ret_stringz(request, &name);
    if (ret)
 return ret;

    KCM_LOG_REQUEST_NAME(context, client, opcode, name);

    ret = kcm_ccache_destroy_client(context, client, name);
    if (ret == 0)
 kcm_drop_default_cache(context, client, name);

    free(name);

    return ret;
}
