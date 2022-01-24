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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_int ;
struct vmcb_state {int rax; } ;
struct svm_softc {int /*<<< orphan*/  vm; } ;
struct svm_regctx {int sctx_rdx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int*) ; 
 struct svm_regctx* FUNC2 (struct svm_softc*,int) ; 
 struct vmcb_state* FUNC3 (struct svm_softc*,int) ; 
 int FUNC4 (struct svm_softc*,int,int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static int
FUNC5(struct svm_softc *sc, int vcpu, u_int num, bool *retu)
{
	struct vmcb_state *state;
	struct svm_regctx *ctx;
	uint64_t result;
	int error;

	if (FUNC0(num))
		error = FUNC1(sc->vm, vcpu, num, &result, retu);
	else
		error = FUNC4(sc, vcpu, num, &result, retu);

	if (error == 0) {
		state = FUNC3(sc, vcpu);
		ctx = FUNC2(sc, vcpu);
		state->rax = result & 0xffffffff;
		ctx->sctx_rdx = result >> 32;
	}

	return (error);
}