
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timers; } ;
typedef TYPE_1__ evContext_p ;


 int free_timer ;
 int heap_for_each (int ,int ,int *) ;
 int heap_free (int ) ;

void
evDestroyTimers(const evContext_p *ctx) {
 (void) heap_for_each(ctx->timers, free_timer, ((void*)0));
 (void) heap_free(ctx->timers);
}
