
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_storage ;
typedef int * krb5_principal ;
typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
typedef int kcm_client ;
typedef TYPE_2__* kcm_ccache ;
typedef scalar_t__ int8_t ;
struct TYPE_6__ {int keyblock; } ;
struct TYPE_7__ {int mutex; int flags; TYPE_1__ key; int * server; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_FLAGS_USE_CACHED_KEY ;
 int KCM_LOG_REQUEST_NAME (int ,int *,int ,char*) ;
 int free (char*) ;
 scalar_t__ kcm_ccache_enqueue_default (int ,TYPE_2__*,int *) ;
 scalar_t__ kcm_ccache_resolve_client (int ,int *,int ,char*,TYPE_2__**) ;
 int kcm_release_ccache (int ,TYPE_2__*) ;
 int krb5_free_keyblock (int ,int *) ;
 int krb5_free_principal (int ,int *) ;
 int krb5_keyblock_zero (int *) ;
 scalar_t__ krb5_ret_int8 (int *,scalar_t__*) ;
 scalar_t__ krb5_ret_keyblock (int *,int *) ;
 scalar_t__ krb5_ret_principal (int *,int **) ;
 scalar_t__ krb5_ret_stringz (int *,char**) ;

__attribute__((used)) static krb5_error_code
kcm_op_get_initial_ticket(krb5_context context,
     kcm_client *client,
     kcm_operation opcode,
     krb5_storage *request,
     krb5_storage *response)
{
    krb5_error_code ret;
    kcm_ccache ccache;
    char *name;
    int8_t not_tgt = 0;
    krb5_principal server = ((void*)0);
    krb5_keyblock key;

    krb5_keyblock_zero(&key);

    ret = krb5_ret_stringz(request, &name);
    if (ret)
 return ret;

    KCM_LOG_REQUEST_NAME(context, client, opcode, name);

    ret = krb5_ret_int8(request, &not_tgt);
    if (ret) {
 free(name);
 return ret;
    }

    if (not_tgt) {
 ret = krb5_ret_principal(request, &server);
 if (ret) {
     free(name);
     return ret;
 }
    }

    ret = krb5_ret_keyblock(request, &key);
    if (ret) {
 free(name);
 if (server != ((void*)0))
     krb5_free_principal(context, server);
 return ret;
    }

    ret = kcm_ccache_resolve_client(context, client, opcode,
        name, &ccache);
    if (ret == 0) {
 HEIMDAL_MUTEX_lock(&ccache->mutex);

 if (ccache->server != ((void*)0)) {
     krb5_free_principal(context, ccache->server);
     ccache->server = ((void*)0);
 }

 krb5_free_keyblock(context, &ccache->key.keyblock);

 ccache->server = server;
 ccache->key.keyblock = key;
     ccache->flags |= KCM_FLAGS_USE_CACHED_KEY;

 ret = kcm_ccache_enqueue_default(context, ccache, ((void*)0));
 if (ret) {
     ccache->server = ((void*)0);
     krb5_keyblock_zero(&ccache->key.keyblock);
     ccache->flags &= ~(KCM_FLAGS_USE_CACHED_KEY);
 }

 HEIMDAL_MUTEX_unlock(&ccache->mutex);
    }

    free(name);

    if (ret != 0) {
 krb5_free_principal(context, server);
 krb5_free_keyblock(context, &key);
    }

    kcm_release_ccache(context, ccache);

    return ret;
}
