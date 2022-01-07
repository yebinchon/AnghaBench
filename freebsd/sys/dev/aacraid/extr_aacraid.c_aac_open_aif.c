
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct aac_softc {int aac_io_lock; struct aac_fib_context* fibctx; } ;
struct aac_fib_context {int unique; struct aac_fib_context* next; struct aac_fib_context* prev; } ;
typedef scalar_t__ caddr_t ;


 int ENOMEM ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int M_AACRAIDBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int aac_close_aif (struct aac_softc*,scalar_t__) ;
 int copyout (int*,void*,int) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 struct aac_fib_context* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
aac_open_aif(struct aac_softc *sc, caddr_t arg)
{
 struct aac_fib_context *fibctx, *ctx;
 int error = 0;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 fibctx = malloc(sizeof(struct aac_fib_context), M_AACRAIDBUF, M_NOWAIT|M_ZERO);
 if (fibctx == ((void*)0))
  return (ENOMEM);

 mtx_lock(&sc->aac_io_lock);

 if (sc->fibctx == ((void*)0))
  sc->fibctx = fibctx;
 else {
  for (ctx = sc->fibctx; ctx->next; ctx = ctx->next)
   ;
  ctx->next = fibctx;
  fibctx->prev = ctx;
 }


 fibctx->unique = (*(u_int32_t *)&fibctx & 0xffffffff);
 ctx = sc->fibctx;
 while (ctx != fibctx) {
  if (ctx->unique == fibctx->unique) {
   fibctx->unique++;
   ctx = sc->fibctx;
  } else {
   ctx = ctx->next;
  }
 }

 error = copyout(&fibctx->unique, (void *)arg, sizeof(u_int32_t));
 mtx_unlock(&sc->aac_io_lock);
 if (error)
  aac_close_aif(sc, (caddr_t)ctx);
 return error;
}
