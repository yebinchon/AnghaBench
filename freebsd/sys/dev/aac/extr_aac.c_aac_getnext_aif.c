
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_adapter_fib_ioctl32 {scalar_t__ AdapterFibContext; scalar_t__ AifFib; scalar_t__ Wait; } ;
struct get_adapter_fib_ioctl {scalar_t__ AdapterFibContext; scalar_t__ AifFib; scalar_t__ Wait; } ;
struct aac_softc {int aac_state; int aac_aifq; struct aac_fib_context* fibctx; } ;
struct aac_fib_context {scalar_t__ unique; struct aac_fib_context* next; } ;
typedef scalar_t__ caddr_t ;
typedef int agf32 ;
typedef int agf ;


 int AAC_STATE_AIF_SLEEPER ;
 int EAGAIN ;
 int EFAULT ;
 char* HBA_FLAGS_DBG_AIF_B ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int PCATCH ;
 int PRIBIO ;
 scalar_t__ SV_CURPROC_FLAG (int ) ;
 int SV_ILP32 ;
 int aac_return_aif (struct aac_softc*,struct aac_fib_context*,scalar_t__) ;
 int copyin (scalar_t__,struct get_adapter_fib_ioctl32*,int) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int tsleep (int ,int,char*,int ) ;

__attribute__((used)) static int
aac_getnext_aif(struct aac_softc *sc, caddr_t arg)
{
 struct get_adapter_fib_ioctl agf;
 struct aac_fib_context *ctx;
 int error;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
  error = copyin(arg, &agf, sizeof(agf));
 if (error == 0) {
  for (ctx = sc->fibctx; ctx; ctx = ctx->next) {
   if (agf.AdapterFibContext == ctx->unique)
    break;
  }
  if (!ctx)
   return (EFAULT);

  error = aac_return_aif(sc, ctx, agf.AifFib);
  if (error == EAGAIN && agf.Wait) {
   fwprintf(sc, HBA_FLAGS_DBG_AIF_B, "aac_getnext_aif(): waiting for AIF");
   sc->aac_state |= AAC_STATE_AIF_SLEEPER;
   while (error == EAGAIN) {
    error = tsleep(sc->aac_aifq, PRIBIO |
            PCATCH, "aacaif", 0);
    if (error == 0)
     error = aac_return_aif(sc, ctx, agf.AifFib);
   }
   sc->aac_state &= ~AAC_STATE_AIF_SLEEPER;
  }
 }
 return(error);
}
