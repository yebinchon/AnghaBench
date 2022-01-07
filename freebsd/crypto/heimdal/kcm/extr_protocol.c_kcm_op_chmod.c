
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
typedef int kcm_client ;
typedef int kcm_ccache ;


 int KCM_LOG_REQUEST_NAME (int ,int *,int ,char*) ;
 int free (char*) ;
 scalar_t__ kcm_ccache_resolve_client (int ,int *,int ,char*,int *) ;
 scalar_t__ kcm_chmod (int ,int *,int ,int ) ;
 int kcm_release_ccache (int ,int ) ;
 scalar_t__ krb5_ret_stringz (int *,char**) ;
 scalar_t__ krb5_ret_uint16 (int *,int *) ;

__attribute__((used)) static krb5_error_code
kcm_op_chmod(krb5_context context,
      kcm_client *client,
      kcm_operation opcode,
      krb5_storage *request,
      krb5_storage *response)
{
    uint16_t mode;
    krb5_error_code ret;
    kcm_ccache ccache;
    char *name;

    ret = krb5_ret_stringz(request, &name);
    if (ret)
 return ret;

    KCM_LOG_REQUEST_NAME(context, client, opcode, name);

    ret = krb5_ret_uint16(request, &mode);
    if (ret) {
 free(name);
 return ret;
    }

    ret = kcm_ccache_resolve_client(context, client, opcode,
        name, &ccache);
    if (ret) {
 free(name);
 return ret;
    }

    ret = kcm_chmod(context, client, ccache, mode);

    free(name);
    kcm_release_ccache(context, ccache);

    return ret;
}
