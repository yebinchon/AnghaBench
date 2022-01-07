
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
struct TYPE_7__ {int flags; } ;
struct TYPE_8__ {TYPE_1__ ticket; } ;
typedef int OM_uint32 ;


 int EINVAL ;
 int GSS_S_BAD_MECH ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int TicketFlags2int (int ) ;
 int _gsskrb5_encode_om_uint32 (int ,unsigned char*) ;
 int _gsskrb5_set_status (int ,char*) ;
 int gss_add_buffer_set_member (int *,TYPE_4__*,int *) ;

__attribute__((used)) static OM_uint32 inquire_sec_context_tkt_flags
           (OM_uint32 *minor_status,
            const gsskrb5_ctx context_handle,
            gss_buffer_set_t *data_set)
{
    OM_uint32 tkt_flags;
    unsigned char buf[4];
    gss_buffer_desc value;

    HEIMDAL_MUTEX_lock(&context_handle->ctx_id_mutex);

    if (context_handle->ticket == ((void*)0)) {
 HEIMDAL_MUTEX_unlock(&context_handle->ctx_id_mutex);
 _gsskrb5_set_status(EINVAL, "No ticket from which to obtain flags");
 *minor_status = EINVAL;
 return GSS_S_BAD_MECH;
    }

    tkt_flags = TicketFlags2int(context_handle->ticket->ticket.flags);
    HEIMDAL_MUTEX_unlock(&context_handle->ctx_id_mutex);

    _gsskrb5_encode_om_uint32(tkt_flags, buf);
    value.length = sizeof(buf);
    value.value = buf;

    return gss_add_buffer_set_member(minor_status,
         &value,
         data_set);
}
