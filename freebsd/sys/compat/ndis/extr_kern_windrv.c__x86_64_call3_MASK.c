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
typedef  int /*<<< orphan*/  uint64_t ;
struct fpu_cc_ent {int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FPU_KERN_NORMAL ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fpu_cc_ent*) ; 
 struct fpu_cc_ent* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64_t
FUNC5(void *fn, uint64_t a, uint64_t b, uint64_t c)
{
	struct fpu_cc_ent *ent;
	uint64_t ret;

	if ((ent = FUNC3()) == NULL)
		return (ENOMEM);
	FUNC0(curthread, ent->ctx, FPU_KERN_NORMAL);
	ret = FUNC4(fn, a, b, c);
	FUNC1(curthread, ent->ctx);
	FUNC2(ent);

	return (ret);
}