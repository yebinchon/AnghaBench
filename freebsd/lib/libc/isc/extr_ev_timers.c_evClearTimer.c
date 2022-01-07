
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {TYPE_5__* opaque; } ;
typedef TYPE_4__ evTimerID ;
struct TYPE_17__ {int index; int inter; } ;
typedef TYPE_5__ evTimer ;
struct TYPE_18__ {int debug; int timers; TYPE_3__* cur; } ;
typedef TYPE_6__ evContext_p ;
struct TYPE_19__ {TYPE_6__* opaque; } ;
typedef TYPE_7__ evContext ;
struct TYPE_13__ {TYPE_5__* this; } ;
struct TYPE_14__ {TYPE_1__ timer; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_2__ u; } ;


 int ENOENT ;
 int EV_ERR (int ) ;
 int FREE (TYPE_5__*) ;
 scalar_t__ Timer ;
 int evConsTime (int ,int ) ;
 int evPrintf (TYPE_6__*,int,char*) ;
 scalar_t__ heap_delete (int ,int ) ;
 TYPE_5__* heap_element (int ,int ) ;
 int heap_for_each (int ,int ,void*) ;
 int print_timer ;

int
evClearTimer(evContext opaqueCtx, evTimerID id) {
 evContext_p *ctx = opaqueCtx.opaque;
 evTimer *del = id.opaque;

 if (ctx->cur != ((void*)0) &&
     ctx->cur->type == Timer &&
     ctx->cur->u.timer.this == del) {
  evPrintf(ctx, 8, "deferring delete of timer (executing)\n");




  del->inter = evConsTime(0, 0);
  return (0);
 }

 if (heap_element(ctx->timers, del->index) != del)
  EV_ERR(ENOENT);

 if (heap_delete(ctx->timers, del->index) < 0)
  return (-1);
 FREE(del);

 if (ctx->debug > 7) {
  evPrintf(ctx, 7, "timers after evClearTimer:\n");
  (void) heap_for_each(ctx->timers, print_timer, (void *)ctx);
 }

 return (0);
}
