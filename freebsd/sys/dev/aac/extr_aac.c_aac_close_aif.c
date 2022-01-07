
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct aac_softc {int aac_aifq_lock; struct aac_fib_context* fibctx; } ;
struct aac_fib_context {scalar_t__ unique; TYPE_1__* prev; struct aac_fib_context* next; } ;
typedef int caddr_t ;
struct TYPE_2__ {struct aac_fib_context* next; } ;


 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int M_AACBUF ;
 int free (struct aac_fib_context*,int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
aac_close_aif(struct aac_softc *sc, caddr_t arg)
{
 struct aac_fib_context *ctx;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 mtx_lock(&sc->aac_aifq_lock);
 for (ctx = sc->fibctx; ctx; ctx = ctx->next) {
  if (ctx->unique == *(uint32_t *)&arg) {
   if (ctx == sc->fibctx)
    sc->fibctx = ((void*)0);
   else {
    ctx->prev->next = ctx->next;
    if (ctx->next)
     ctx->next->prev = ctx->prev;
   }
   break;
  }
 }
 mtx_unlock(&sc->aac_aifq_lock);
 if (ctx)
  free(ctx, M_AACBUF);

 return 0;
}
