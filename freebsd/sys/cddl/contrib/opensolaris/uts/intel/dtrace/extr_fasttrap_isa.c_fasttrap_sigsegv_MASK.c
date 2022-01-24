#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  kthread_t ;
struct TYPE_4__ {scalar_t__ ksi_addr; int /*<<< orphan*/  ksi_code; int /*<<< orphan*/  ksi_signo; } ;
typedef  TYPE_1__ ksiginfo_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEGV_MAPERR ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(proc_t *p, kthread_t *t, uintptr_t addr)
{
	ksiginfo_t ksi;

	FUNC2(&ksi);
	ksi.ksi_signo = SIGSEGV;
	ksi.ksi_code = SEGV_MAPERR;
	ksi.ksi_addr = (caddr_t)addr;
	FUNC0(p);
	(void)FUNC3(t, SIGSEGV, &ksi);
	FUNC1(p);
}