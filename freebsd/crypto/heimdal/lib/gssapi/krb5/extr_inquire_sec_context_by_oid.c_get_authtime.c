
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_3__* gsskrb5_ctx ;
typedef int gss_buffer_set_t ;
struct TYPE_10__ {int length; unsigned char* value; } ;
typedef TYPE_4__ gss_buffer_desc ;
typedef int buf ;
struct TYPE_9__ {int ctx_id_mutex; TYPE_2__* ticket; } ;
struct TYPE_7__ {int authtime; } ;
struct TYPE_8__ {TYPE_1__ ticket; } ;
typedef int OM_uint32 ;


 int EINVAL ;
 int GSS_S_FAILURE ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int _gsskrb5_encode_om_uint32 (int ,unsigned char*) ;
 int _gsskrb5_set_status (int ,char*) ;
 int gss_add_buffer_set_member (int *,TYPE_4__*,int *) ;

__attribute__((used)) static OM_uint32
get_authtime(OM_uint32 *minor_status,
      gsskrb5_ctx ctx,
      gss_buffer_set_t *data_set)

{
    gss_buffer_desc value;
    unsigned char buf[4];
    OM_uint32 authtime;

    HEIMDAL_MUTEX_lock(&ctx->ctx_id_mutex);
    if (ctx->ticket == ((void*)0)) {
 HEIMDAL_MUTEX_unlock(&ctx->ctx_id_mutex);
 _gsskrb5_set_status(EINVAL, "No ticket to obtain auth time from");
 *minor_status = EINVAL;
 return GSS_S_FAILURE;
    }

    authtime = ctx->ticket->ticket.authtime;

    HEIMDAL_MUTEX_unlock(&ctx->ctx_id_mutex);

    _gsskrb5_encode_om_uint32(authtime, buf);
    value.length = sizeof(buf);
    value.value = buf;

    return gss_add_buffer_set_member(minor_status,
         &value,
         data_set);
}
