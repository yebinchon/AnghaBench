
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* gsskrb5_ctx ;
struct TYPE_7__ {int ctx_id_mutex; TYPE_1__* ticket; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {TYPE_2__ ticket; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ EINVAL ;
 scalar_t__ GSS_S_BAD_MECH ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_NO_CONTEXT ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 scalar_t__ TicketFlags2int (int ) ;

OM_uint32
_gsskrb5_get_tkt_flags(OM_uint32 *minor_status,
         gsskrb5_ctx ctx,
         OM_uint32 *tkt_flags)
{
    if (ctx == ((void*)0)) {
 *minor_status = EINVAL;
 return GSS_S_NO_CONTEXT;
    }
    HEIMDAL_MUTEX_lock(&ctx->ctx_id_mutex);

    if (ctx->ticket == ((void*)0)) {
 HEIMDAL_MUTEX_unlock(&ctx->ctx_id_mutex);
 *minor_status = EINVAL;
 return GSS_S_BAD_MECH;
    }

    *tkt_flags = TicketFlags2int(ctx->ticket->ticket.flags);
    HEIMDAL_MUTEX_unlock(&ctx->ctx_id_mutex);

    *minor_status = 0;
    return GSS_S_COMPLETE;
}
