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
struct thread {int /*<<< orphan*/ * td_retval; } ;
struct siginfo32 {int dummy; } ;
struct freebsd32_sigwaitinfo_args {int /*<<< orphan*/  info; int /*<<< orphan*/  set; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  set ;
struct TYPE_3__ {int /*<<< orphan*/  ksi_signo; int /*<<< orphan*/  ksi_info; } ;
typedef  TYPE_1__ ksiginfo_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct siginfo32*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct siginfo32*) ; 

int
FUNC4(struct thread *td, struct freebsd32_sigwaitinfo_args *uap)
{
	ksiginfo_t ksi;
	struct siginfo32 si32;
	sigset_t set;
	int error;

	error = FUNC0(uap->set, &set, sizeof(set));
	if (error)
		return (error);

	error = FUNC2(td, set, &ksi, NULL);
	if (error)
		return (error);

	if (uap->info) {
		FUNC3(&ksi.ksi_info, &si32);
		error = FUNC1(&si32, uap->info, sizeof(struct siginfo32));
	}	
	if (error == 0)
		td->td_retval[0] = ksi.ksi_signo;
	return (error);
}