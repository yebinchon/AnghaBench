
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct libworker {TYPE_1__* ctx; scalar_t__ is_bg_thread; } ;
struct ctx_query {int cancelled; } ;
struct TYPE_2__ {int cfglock; } ;


 struct ctx_query* context_deserialize_cancel (TYPE_1__*,int *,int ) ;
 int free (int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;

__attribute__((used)) static void
handle_cancel(struct libworker* w, uint8_t* buf, uint32_t len)
{
 struct ctx_query* q;
 if(w->is_bg_thread) {
  lock_basic_lock(&w->ctx->cfglock);
  q = context_deserialize_cancel(w->ctx, buf, len);
  lock_basic_unlock(&w->ctx->cfglock);
 } else {
  q = context_deserialize_cancel(w->ctx, buf, len);
 }
 if(!q) {


  return;
 }
 q->cancelled = 1;
 free(buf);
}
