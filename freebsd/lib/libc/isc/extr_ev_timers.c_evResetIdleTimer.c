
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_11__ {struct timespec max_idle; int lastTouched; void* uap; int func; } ;
typedef TYPE_1__ idle_timer ;
struct TYPE_12__ {TYPE_3__* opaque; } ;
typedef TYPE_2__ evTimerID ;
typedef int evTimerFunc ;
struct TYPE_13__ {TYPE_1__* uap; } ;
typedef TYPE_3__ evTimer ;
struct TYPE_14__ {int lastEventTime; } ;
typedef TYPE_4__ evContext_p ;
struct TYPE_15__ {TYPE_4__* opaque; } ;
typedef TYPE_5__ evContext ;


 int evAddTime (int ,struct timespec) ;
 int evResetTimer (TYPE_5__,TYPE_2__,int ,TYPE_1__*,int ,struct timespec) ;
 int idle_timeout ;

int
evResetIdleTimer(evContext opaqueCtx,
   evTimerID opaqueID,
   evTimerFunc func,
   void *uap,
   struct timespec max_idle
) {
 evContext_p *ctx = opaqueCtx.opaque;
 evTimer *timer = opaqueID.opaque;
 idle_timer *tt = timer->uap;

 tt->func = func;
 tt->uap = uap;
 tt->lastTouched = ctx->lastEventTime;
 tt->max_idle = max_idle;

 return (evResetTimer(opaqueCtx, opaqueID, idle_timeout, tt,
        evAddTime(ctx->lastEventTime, max_idle),
        max_idle));
}
