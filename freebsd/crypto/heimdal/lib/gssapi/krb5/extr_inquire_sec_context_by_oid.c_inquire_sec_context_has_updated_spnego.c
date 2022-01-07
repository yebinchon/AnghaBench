
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ keytype; } ;
typedef TYPE_3__ krb5_keyblock ;
typedef TYPE_4__* gsskrb5_ctx ;
typedef int gss_buffer_set_t ;
struct TYPE_9__ {int more_flags; int ctx_id_mutex; TYPE_2__* auth_context; } ;
struct TYPE_7__ {TYPE_1__* keyblock; TYPE_3__* local_subkey; TYPE_3__* remote_subkey; } ;
struct TYPE_6__ {scalar_t__ keytype; } ;
typedef scalar_t__ OM_uint32 ;


 int GSS_C_NO_BUFFER_SET ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int IS_CFX ;
 int LOCAL ;

__attribute__((used)) static OM_uint32 inquire_sec_context_has_updated_spnego
           (OM_uint32 *minor_status,
            const gsskrb5_ctx context_handle,
            gss_buffer_set_t *data_set)
{
    int is_updated = 0;

    *minor_status = 0;
    *data_set = GSS_C_NO_BUFFER_SET;







    HEIMDAL_MUTEX_lock(&context_handle->ctx_id_mutex);
    is_updated = (context_handle->more_flags & IS_CFX);
    if (is_updated == 0) {
 krb5_keyblock *acceptor_subkey;

 if (context_handle->more_flags & LOCAL)
     acceptor_subkey = context_handle->auth_context->remote_subkey;
 else
     acceptor_subkey = context_handle->auth_context->local_subkey;

 if (acceptor_subkey != ((void*)0))
     is_updated = (acceptor_subkey->keytype !=
     context_handle->auth_context->keyblock->keytype);
    }
    HEIMDAL_MUTEX_unlock(&context_handle->ctx_id_mutex);

    return is_updated ? GSS_S_COMPLETE : GSS_S_FAILURE;
}
