
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uuid ;
struct kcm_creds {int cred; } ;
typedef int ssize_t ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcmuuid_t ;
typedef int kcm_operation ;
typedef int kcm_client ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_5__ {int mutex; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_LOG_REQUEST_NAME (int ,int *,int ,char*) ;
 scalar_t__ KRB5_CC_END ;
 scalar_t__ KRB5_CC_IO ;
 int free (char*) ;
 struct kcm_creds* kcm_ccache_find_cred_uuid (int ,TYPE_1__*,int ) ;
 scalar_t__ kcm_ccache_resolve_client (int ,int *,int ,char*,TYPE_1__**) ;
 int kcm_release_ccache (int ,TYPE_1__*) ;
 int krb5_clear_error_message (int ) ;
 scalar_t__ krb5_ret_stringz (int *,char**) ;
 int krb5_storage_read (int *,int *,int) ;
 scalar_t__ krb5_store_creds (int *,int *) ;

__attribute__((used)) static krb5_error_code
kcm_op_get_cred_by_uuid(krb5_context context,
   kcm_client *client,
   kcm_operation opcode,
   krb5_storage *request,
   krb5_storage *response)
{
    krb5_error_code ret;
    kcm_ccache ccache;
    char *name;
    struct kcm_creds *c;
    kcmuuid_t uuid;
    ssize_t sret;

    ret = krb5_ret_stringz(request, &name);
    if (ret)
 return ret;

    KCM_LOG_REQUEST_NAME(context, client, opcode, name);

    ret = kcm_ccache_resolve_client(context, client, opcode,
        name, &ccache);
    free(name);
    if (ret)
 return ret;

    sret = krb5_storage_read(request, &uuid, sizeof(uuid));
    if (sret != sizeof(uuid)) {
 kcm_release_ccache(context, ccache);
 krb5_clear_error_message(context);
 return KRB5_CC_IO;
    }

    c = kcm_ccache_find_cred_uuid(context, ccache, uuid);
    if (c == ((void*)0)) {
 kcm_release_ccache(context, ccache);
 return KRB5_CC_END;
    }

    HEIMDAL_MUTEX_lock(&ccache->mutex);
    ret = krb5_store_creds(response, &c->cred);
    HEIMDAL_MUTEX_unlock(&ccache->mutex);

    kcm_release_ccache(context, ccache);

    return ret;
}
