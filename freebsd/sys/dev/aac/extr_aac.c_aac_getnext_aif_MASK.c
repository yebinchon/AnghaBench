#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct get_adapter_fib_ioctl32 {scalar_t__ AdapterFibContext; scalar_t__ AifFib; scalar_t__ Wait; } ;
struct get_adapter_fib_ioctl {scalar_t__ AdapterFibContext; scalar_t__ AifFib; scalar_t__ Wait; } ;
struct aac_softc {int /*<<< orphan*/  aac_state; int /*<<< orphan*/  aac_aifq; struct aac_fib_context* fibctx; } ;
struct aac_fib_context {scalar_t__ unique; struct aac_fib_context* next; } ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  agf32 ;
typedef  int /*<<< orphan*/  agf ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_STATE_AIF_SLEEPER ; 
 int EAGAIN ; 
 int EFAULT ; 
 char* HBA_FLAGS_DBG_AIF_B ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int PCATCH ; 
 int PRIBIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SV_ILP32 ; 
 int FUNC1 (struct aac_softc*,struct aac_fib_context*,scalar_t__) ; 
 int FUNC2 (scalar_t__,struct get_adapter_fib_ioctl32*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_softc*,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct aac_softc *sc, caddr_t arg)
{
	struct get_adapter_fib_ioctl agf;
	struct aac_fib_context *ctx;
	int error;

	FUNC3(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

#ifdef COMPAT_FREEBSD32
	if (SV_CURPROC_FLAG(SV_ILP32)) {
		struct get_adapter_fib_ioctl32 agf32;
		error = copyin(arg, &agf32, sizeof(agf32));
		if (error == 0) {
			agf.AdapterFibContext = agf32.AdapterFibContext;
			agf.Wait = agf32.Wait;
			agf.AifFib = (caddr_t)(uintptr_t)agf32.AifFib;
		}
	} else
#endif
		error = FUNC2(arg, &agf, sizeof(agf));
	if (error == 0) {
		for (ctx = sc->fibctx; ctx; ctx = ctx->next) {
			if (agf.AdapterFibContext == ctx->unique)
				break;
		}
		if (!ctx)
			return (EFAULT);

		error = FUNC1(sc, ctx, agf.AifFib);
		if (error == EAGAIN && agf.Wait) {
			FUNC3(sc, HBA_FLAGS_DBG_AIF_B, "aac_getnext_aif(): waiting for AIF");
			sc->aac_state |= AAC_STATE_AIF_SLEEPER;
			while (error == EAGAIN) {
				error = FUNC4(sc->aac_aifq, PRIBIO |
					       PCATCH, "aacaif", 0);
				if (error == 0)
					error = FUNC1(sc, ctx, agf.AifFib);
			}
			sc->aac_state &= ~AAC_STATE_AIF_SLEEPER;
		}
	}
	return(error);
}