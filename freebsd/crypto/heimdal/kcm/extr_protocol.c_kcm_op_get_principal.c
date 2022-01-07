
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
typedef int kcm_client ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_4__ {int * client; } ;


 int KCM_LOG_REQUEST_NAME (int ,int *,int ,char*) ;
 scalar_t__ KRB5_CC_NOTFOUND ;
 int free (char*) ;
 scalar_t__ kcm_ccache_resolve_client (int ,int *,int ,char*,TYPE_1__**) ;
 int kcm_release_ccache (int ,TYPE_1__*) ;
 scalar_t__ krb5_ret_stringz (int *,char**) ;
 scalar_t__ krb5_store_principal (int *,int *) ;

__attribute__((used)) static krb5_error_code
kcm_op_get_principal(krb5_context context,
       kcm_client *client,
       kcm_operation opcode,
       krb5_storage *request,
       krb5_storage *response)
{
    krb5_error_code ret;
    kcm_ccache ccache;
    char *name;

    ret = krb5_ret_stringz(request, &name);
    if (ret)
 return ret;

    KCM_LOG_REQUEST_NAME(context, client, opcode, name);

    ret = kcm_ccache_resolve_client(context, client, opcode,
        name, &ccache);
    if (ret) {
 free(name);
 return ret;
    }

    if (ccache->client == ((void*)0))
 ret = KRB5_CC_NOTFOUND;
    else
 ret = krb5_store_principal(response, ccache->client);

    free(name);
    kcm_release_ccache(context, ccache);

    return 0;
}
