
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
struct TYPE_4__ {int mutex; int kdc_offset; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_LOG_REQUEST_NAME (int ,int *,int ,char*) ;
 int free (char*) ;
 scalar_t__ kcm_ccache_resolve_client (int ,int *,int ,char*,TYPE_1__**) ;
 int kcm_release_ccache (int ,TYPE_1__*) ;
 scalar_t__ krb5_ret_stringz (int *,char**) ;
 scalar_t__ krb5_store_int32 (int *,int ) ;

__attribute__((used)) static krb5_error_code
kcm_op_get_kdc_offset(krb5_context context,
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

    ret = kcm_ccache_resolve_client(context, client, opcode, name, &ccache);
    free(name);
    if (ret)
 return ret;

    HEIMDAL_MUTEX_lock(&ccache->mutex);
    ret = krb5_store_int32(response, ccache->kdc_offset);
    HEIMDAL_MUTEX_unlock(&ccache->mutex);

    kcm_release_ccache(context, ccache);

    return ret;
}
