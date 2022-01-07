
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int krb5_get_init_creds_opt ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef int krb5_const_realm ;
typedef int krb5_ccache_data ;
typedef TYPE_3__* kcm_ccache ;
typedef int cred ;
struct TYPE_10__ {scalar_t__ length; } ;
struct TYPE_13__ {TYPE_1__ keyvalue; } ;
struct TYPE_11__ {int * keytab; TYPE_4__ keyblock; } ;
struct TYPE_12__ {int flags; scalar_t__ tkt_life; scalar_t__ renew_life; int mutex; int name; TYPE_2__ key; int client; int * server; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_ASSERT_VALID (TYPE_3__*) ;
 int KCM_FLAGS_USE_CACHED_KEY ;
 int KCM_FLAGS_USE_KEYTAB ;
 scalar_t__ KRB5_FCC_INTERNAL ;
 int free (char*) ;
 int kcm_ccache_remove_creds_internal (int ,TYPE_3__*) ;
 scalar_t__ kcm_ccache_store_cred_internal (int ,TYPE_3__*,int *,int ,int **) ;
 int kcm_internal_ccache (int ,TYPE_3__*,int *) ;
 int kcm_log (int ,char*,int ,...) ;
 int krb5_abortx (int ,char*) ;
 int krb5_free_cred_contents (int ,int *) ;
 int krb5_get_err_text (int ,scalar_t__) ;
 scalar_t__ krb5_get_init_creds_keyblock (int ,int *,int ,TYPE_4__*,int ,char*,int *) ;
 scalar_t__ krb5_get_init_creds_keytab (int ,int *,int ,int *,int ,char*,int *) ;
 scalar_t__ krb5_get_init_creds_opt_alloc (int ,int **) ;
 int krb5_get_init_creds_opt_free (int ,int *) ;
 int krb5_get_init_creds_opt_set_default_flags (int ,char*,int ,int *) ;
 int krb5_get_init_creds_opt_set_renew_life (int *,scalar_t__) ;
 int krb5_get_init_creds_opt_set_tkt_life (int *,scalar_t__) ;
 int krb5_principal_get_realm (int ,int ) ;
 scalar_t__ krb5_unparse_name (int ,int *,char**) ;
 int memset (int *,int ,int) ;

krb5_error_code
kcm_ccache_acquire(krb5_context context,
     kcm_ccache ccache,
     krb5_creds **credp)
{
    krb5_error_code ret = 0;
    krb5_creds cred;
    krb5_const_realm realm;
    krb5_get_init_creds_opt *opt = ((void*)0);
    krb5_ccache_data ccdata;
    char *in_tkt_service = ((void*)0);

    memset(&cred, 0, sizeof(cred));

    KCM_ASSERT_VALID(ccache);


    if (ccache->flags & KCM_FLAGS_USE_CACHED_KEY) {
 if (ccache->key.keyblock.keyvalue.length == 0)
     krb5_abortx(context,
   "kcm_ccache_acquire: KCM_FLAGS_USE_CACHED_KEY without key");
    } else if (ccache->flags & KCM_FLAGS_USE_KEYTAB) {
 if (ccache->key.keytab == ((void*)0))
     krb5_abortx(context,
   "kcm_ccache_acquire: KCM_FLAGS_USE_KEYTAB without keytab");
    } else {
 kcm_log(0, "Cannot acquire initial credentials for cache %s without key",
  ccache->name);
 return KRB5_FCC_INTERNAL;
    }

    HEIMDAL_MUTEX_lock(&ccache->mutex);


    kcm_internal_ccache(context, ccache, &ccdata);


    if (ccache->server != ((void*)0)) {
 ret = krb5_unparse_name(context, ccache->server, &in_tkt_service);
 if (ret) {
     kcm_log(0, "Failed to unparse service principal name for cache %s: %s",
      ccache->name, krb5_get_err_text(context, ret));
     return ret;
 }
    }

    realm = krb5_principal_get_realm(context, ccache->client);

    ret = krb5_get_init_creds_opt_alloc(context, &opt);
    if (ret)
 goto out;
    krb5_get_init_creds_opt_set_default_flags(context, "kcm", realm, opt);
    if (ccache->tkt_life != 0)
 krb5_get_init_creds_opt_set_tkt_life(opt, ccache->tkt_life);
    if (ccache->renew_life != 0)
 krb5_get_init_creds_opt_set_renew_life(opt, ccache->renew_life);

    if (ccache->flags & KCM_FLAGS_USE_CACHED_KEY) {
 ret = krb5_get_init_creds_keyblock(context,
        &cred,
        ccache->client,
        &ccache->key.keyblock,
        0,
        in_tkt_service,
        opt);
    } else {

 ret = krb5_get_init_creds_keytab(context,
      &cred,
      ccache->client,
      ccache->key.keytab,
      0,
      in_tkt_service,
      opt);
    }

    if (ret) {
 kcm_log(0, "Failed to acquire credentials for cache %s: %s",
  ccache->name, krb5_get_err_text(context, ret));
 if (in_tkt_service != ((void*)0))
     free(in_tkt_service);
 goto out;
    }

    if (in_tkt_service != ((void*)0))
 free(in_tkt_service);


    kcm_ccache_remove_creds_internal(context, ccache);

    ret = kcm_ccache_store_cred_internal(context, ccache, &cred, 0, credp);
    if (ret) {
 kcm_log(0, "Failed to store credentials for cache %s: %s",
  ccache->name, krb5_get_err_text(context, ret));
 krb5_free_cred_contents(context, &cred);
 goto out;
    }

out:
    if (opt)
 krb5_get_init_creds_opt_free(context, opt);

    HEIMDAL_MUTEX_unlock(&ccache->mutex);

    return ret;
}
