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
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/  ELFCLASS64 ; 
 int /*<<< orphan*/  EM_RISCV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(kvm_t *kd)
{

	return (FUNC1(kd, ELFCLASS64, EM_RISCV) &&
	    FUNC0(kd));
}