
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_12__ {int timer; struct timespec max_idle; int lastTouched; void* uap; int func; } ;
typedef TYPE_1__ idle_timer ;
struct TYPE_13__ {int opaque; } ;
typedef TYPE_2__ evTimerID ;
typedef int evTimerFunc ;
struct TYPE_14__ {int lastEventTime; } ;
typedef TYPE_3__ evContext_p ;
struct TYPE_15__ {TYPE_3__* opaque; } ;
typedef TYPE_4__ evContext ;


 int FREE (TYPE_1__*) ;
 int OKNEW (TYPE_1__*) ;
 int evAddTime (int ,struct timespec) ;
 scalar_t__ evSetTimer (TYPE_4__,int ,TYPE_1__*,int ,struct timespec,TYPE_2__*) ;
 int idle_timeout ;

int
evSetIdleTimer(evContext opaqueCtx,
  evTimerFunc func,
  void *uap,
  struct timespec max_idle,
  evTimerID *opaqueID
) {
 evContext_p *ctx = opaqueCtx.opaque;
 idle_timer *tt;


 OKNEW(tt);
 tt->func = func;
 tt->uap = uap;
 tt->lastTouched = ctx->lastEventTime;
 tt->max_idle = max_idle;

 if (evSetTimer(opaqueCtx, idle_timeout, tt,
         evAddTime(ctx->lastEventTime, max_idle),
         max_idle, opaqueID) < 0) {
  FREE(tt);
  return (-1);
 }

 tt->timer = opaqueID->opaque;

 return (0);
}
