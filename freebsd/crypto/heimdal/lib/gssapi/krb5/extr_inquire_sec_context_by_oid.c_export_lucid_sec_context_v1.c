
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef int krb5_storage ;
struct TYPE_13__ {int keytype; } ;
typedef TYPE_1__ krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_14__ {int length; int data; } ;
typedef TYPE_2__ krb5_data ;
typedef int krb5_context ;
typedef scalar_t__ int32_t ;
typedef TYPE_3__* gsskrb5_ctx ;
typedef int gss_buffer_set_t ;
struct TYPE_16__ {int length; int value; } ;
typedef TYPE_4__ gss_buffer_desc ;
struct TYPE_15__ {int more_flags; int lifetime; int ctx_id_mutex; int auth_context; } ;
typedef scalar_t__ OM_uint32 ;


 int ACCEPTOR_SUBKEY ;
 scalar_t__ ENOMEM ;







 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int IS_CFX ;
 int LOCAL ;
 int _gsskrb5_clear_status () ;
 scalar_t__ _gsskrb5i_get_token_key (TYPE_3__*,int ,TYPE_1__**) ;
 scalar_t__ gss_add_buffer_set_member (scalar_t__*,TYPE_4__*,int *) ;
 int krb5_auth_con_getlocalseqnumber (int ,int ,scalar_t__*) ;
 int krb5_auth_con_getremoteseqnumber (int ,int ,scalar_t__*) ;
 int krb5_data_free (TYPE_2__*) ;
 int krb5_free_keyblock (int ,TYPE_1__*) ;
 int * krb5_storage_emem () ;
 int krb5_storage_free (int *) ;
 scalar_t__ krb5_storage_to_data (int *,TYPE_2__*) ;
 scalar_t__ krb5_store_int32 (int *,int) ;
 scalar_t__ krb5_store_keyblock (int *,TYPE_1__) ;
 scalar_t__ krb5_store_uint32 (int *,int ) ;

__attribute__((used)) static OM_uint32
export_lucid_sec_context_v1(OM_uint32 *minor_status,
       gsskrb5_ctx context_handle,
       krb5_context context,
       gss_buffer_set_t *data_set)
{
    krb5_storage *sp = ((void*)0);
    OM_uint32 major_status = GSS_S_COMPLETE;
    krb5_error_code ret;
    krb5_keyblock *key = ((void*)0);
    int32_t number;
    int is_cfx;
    krb5_data data;

    *minor_status = 0;

    HEIMDAL_MUTEX_lock(&context_handle->ctx_id_mutex);

    is_cfx = (context_handle->more_flags & IS_CFX);

    sp = krb5_storage_emem();
    if (sp == ((void*)0)) {
 _gsskrb5_clear_status();
 ret = ENOMEM;
 goto out;
    }

    ret = krb5_store_int32(sp, 1);
    if (ret) goto out;
    ret = krb5_store_int32(sp, (context_handle->more_flags & LOCAL) ? 1 : 0);
    if (ret) goto out;
    ret = krb5_store_int32(sp, context_handle->lifetime);
    if (ret) goto out;
    krb5_auth_con_getlocalseqnumber (context,
         context_handle->auth_context,
         &number);
    ret = krb5_store_uint32(sp, (uint32_t)0);
    if (ret) goto out;
    ret = krb5_store_uint32(sp, (uint32_t)number);
    if (ret) goto out;
    krb5_auth_con_getremoteseqnumber (context,
          context_handle->auth_context,
          &number);
    ret = krb5_store_uint32(sp, (uint32_t)0);
    if (ret) goto out;
    ret = krb5_store_uint32(sp, (uint32_t)number);
    if (ret) goto out;
    ret = krb5_store_int32(sp, (is_cfx) ? 1 : 0);
    if (ret) goto out;

    ret = _gsskrb5i_get_token_key(context_handle, context, &key);
    if (ret) goto out;

    if (is_cfx == 0) {
 int sign_alg, seal_alg;

 switch (key->keytype) {
 case 130:
 case 129:
 case 128:
     sign_alg = 0;
     seal_alg = 0;
     break;
 case 132:
 case 131:
     sign_alg = 4;
     seal_alg = 2;
     break;
 case 134:
 case 133:
     sign_alg = 17;
     seal_alg = 16;
     break;
 default:
     sign_alg = -1;
     seal_alg = -1;
     break;
 }
 ret = krb5_store_int32(sp, sign_alg);
 if (ret) goto out;
 ret = krb5_store_int32(sp, seal_alg);
 if (ret) goto out;

 ret = krb5_store_keyblock(sp, *key);
 if (ret) goto out;
    } else {
 int subkey_p = (context_handle->more_flags & ACCEPTOR_SUBKEY) ? 1 : 0;


 ret = krb5_store_int32(sp, subkey_p);
 if (ret) goto out;

 ret = krb5_store_keyblock(sp, *key);
 if (ret) goto out;

 if (subkey_p) {
     ret = krb5_store_keyblock(sp, *key);
     if (ret) goto out;
 }
    }
    ret = krb5_storage_to_data(sp, &data);
    if (ret) goto out;

    {
 gss_buffer_desc ad_data;

 ad_data.value = data.data;
 ad_data.length = data.length;

 ret = gss_add_buffer_set_member(minor_status, &ad_data, data_set);
 krb5_data_free(&data);
 if (ret)
     goto out;
    }

out:
    if (key)
 krb5_free_keyblock (context, key);
    if (sp)
 krb5_storage_free(sp);
    if (ret) {
 *minor_status = ret;
 major_status = GSS_S_FAILURE;
    }
    HEIMDAL_MUTEX_unlock(&context_handle->ctx_id_mutex);
    return major_status;
}
