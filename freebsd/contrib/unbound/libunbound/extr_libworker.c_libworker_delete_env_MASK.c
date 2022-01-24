#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct libworker {int /*<<< orphan*/  back; int /*<<< orphan*/  sslctx; TYPE_1__* env; scalar_t__ is_bg_thread; int /*<<< orphan*/  is_bg; int /*<<< orphan*/  ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  rnd; int /*<<< orphan*/  hints; int /*<<< orphan*/  fwds; int /*<<< orphan*/  scratch; int /*<<< orphan*/  scratch_buffer; int /*<<< orphan*/  alloc; int /*<<< orphan*/  mesh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct libworker* w)
{
	if(w->env) {
		FUNC7(w->back);
		FUNC5(w->env->mesh);
		FUNC1(w->ctx, w->env->alloc, 
			!w->is_bg || w->is_bg_thread);
		FUNC9(w->env->scratch_buffer);
		FUNC8(w->env->scratch);
		FUNC2(w->env->fwds);
		FUNC4(w->env->hints);
		FUNC10(w->env->rnd);
		FUNC3(w->env);
	}
#ifdef HAVE_SSL
	SSL_CTX_free(w->sslctx);
#endif
	FUNC6(w->back);
}