
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aifq_idx; int aac_dev; int * aac_aifq; } ;
struct aac_fib_context {int ctx_idx; scalar_t__ ctx_wrap; } ;
struct aac_fib {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int AAC_AIFQ_LENGTH ;
 int EAGAIN ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int copyout (int *,void*,int) ;
 int device_printf (int ,char*,int) ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static int
aac_return_aif(struct aac_softc *sc, struct aac_fib_context *ctx, caddr_t uptr)
{
 int current, error;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 current = ctx->ctx_idx;
 if (current == sc->aifq_idx && !ctx->ctx_wrap) {

  return (EAGAIN);
 }
 error =
  copyout(&sc->aac_aifq[current], (void *)uptr, sizeof(struct aac_fib));
 if (error)
  device_printf(sc->aac_dev,
      "aac_return_aif: copyout returned %d\n", error);
 else {
  ctx->ctx_wrap = 0;
  ctx->ctx_idx = (current + 1) % AAC_AIFQ_LENGTH;
 }
 return(error);
}
