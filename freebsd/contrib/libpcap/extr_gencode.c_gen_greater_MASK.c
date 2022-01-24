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

/* Variables and functions */
 int /*<<< orphan*/  BPF_JGE ; 
 struct block* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

struct block *
FUNC1(compiler_state_t *cstate, int n)
{
	return FUNC0(cstate, BPF_JGE, n);
}