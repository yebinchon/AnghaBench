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
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;
typedef  scalar_t__ bpf_int32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_H ; 
 int /*<<< orphan*/  OR_TRAN_IPV4 ; 
 int /*<<< orphan*/  FUNC0 (struct block*,struct block*) ; 
 struct block* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 struct block* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct block *
FUNC3(compiler_state_t *cstate, int off, bpf_int32 v1,
    bpf_int32 v2)
{
	struct block *b1, *b2;

	if (v1 > v2) {
		/*
		 * Reverse the order of the ports, so v1 is the lower one.
		 */
		bpf_int32 vtemp;

		vtemp = v1;
		v1 = v2;
		v2 = vtemp;
	}

	b1 = FUNC1(cstate, OR_TRAN_IPV4, off, BPF_H, v1);
	b2 = FUNC2(cstate, OR_TRAN_IPV4, off, BPF_H, v2);

	FUNC0(b1, b2);

	return b2;
}