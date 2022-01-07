
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef TYPE_2__* gsskrb5_ctx ;
typedef int gss_buffer_set_t ;
struct TYPE_10__ {int length; int value; } ;
typedef TYPE_3__ gss_buffer_desc ;
struct TYPE_9__ {int ctx_id_mutex; int * ticket; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ EINVAL ;
 int GSS_C_NO_BUFFER_SET ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ GSS_S_NO_CONTEXT ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int _gsskrb5_set_status (scalar_t__,char*) ;
 scalar_t__ gss_add_buffer_set_member (scalar_t__*,TYPE_3__*,int *) ;
 int krb5_data_free (TYPE_1__*) ;
 scalar_t__ krb5_ticket_get_authorization_data_type (int ,int *,unsigned int,TYPE_1__*) ;

__attribute__((used)) static OM_uint32 inquire_sec_context_authz_data
           (OM_uint32 *minor_status,
            const gsskrb5_ctx context_handle,
     krb5_context context,
            unsigned ad_type,
            gss_buffer_set_t *data_set)
{
    krb5_data data;
    gss_buffer_desc ad_data;
    OM_uint32 ret;

    *minor_status = 0;
    *data_set = GSS_C_NO_BUFFER_SET;

    HEIMDAL_MUTEX_lock(&context_handle->ctx_id_mutex);
    if (context_handle->ticket == ((void*)0)) {
 HEIMDAL_MUTEX_unlock(&context_handle->ctx_id_mutex);
 *minor_status = EINVAL;
 _gsskrb5_set_status(EINVAL, "No ticket to obtain authz data from");
 return GSS_S_NO_CONTEXT;
    }

    ret = krb5_ticket_get_authorization_data_type(context,
        context_handle->ticket,
        ad_type,
        &data);
    HEIMDAL_MUTEX_unlock(&context_handle->ctx_id_mutex);
    if (ret) {
 *minor_status = ret;
 return GSS_S_FAILURE;
    }

    ad_data.value = data.data;
    ad_data.length = data.length;

    ret = gss_add_buffer_set_member(minor_status,
        &ad_data,
        data_set);

    krb5_data_free(&data);

    return ret;
}
