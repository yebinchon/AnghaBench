#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  bpf_ctx_t ;
struct TYPE_3__ {scalar_t__ arg; int /*<<< orphan*/ * mem; } ;
typedef  TYPE_1__ bpf_args_t ;

/* Variables and functions */

__attribute__((used)) static uint32_t
FUNC0(const bpf_ctx_t *bc, bpf_args_t *args, uint32_t A)
{

	return args->mem[(uintptr_t)args->arg];
}