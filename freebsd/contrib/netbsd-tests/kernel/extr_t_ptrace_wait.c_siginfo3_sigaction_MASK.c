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
struct TYPE_3__ {int si_signo; int si_code; } ;
typedef  TYPE_1__ siginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  TRAP_BRKPT ; 
 int /*<<< orphan*/  siginfo3_caught ; 

__attribute__((used)) static void
FUNC1(int sig, siginfo_t *info, void *ctx)
{
	FUNC0(sig, SIGTRAP);

	FUNC0(info->si_signo, SIGTRAP);
	FUNC0(info->si_code, TRAP_BRKPT);

	++siginfo3_caught;
}