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
struct thread {int dummy; } ;
struct sigaction {int dummy; } ;
typedef  int /*<<< orphan*/  l_sigaction_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sigaction*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct thread*,int,struct sigaction*,struct sigaction*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sigaction*) ; 
 int FUNC4 (int) ; 

int
FUNC5(struct thread *td, int linux_sig, l_sigaction_t *linux_nsa,
		   l_sigaction_t *linux_osa)
{
	struct sigaction act, oact, *nsa, *osa;
	int error, sig;

	if (!FUNC0(linux_sig))
		return (EINVAL);

	osa = (linux_osa != NULL) ? &oact : NULL;
	if (linux_nsa != NULL) {
		nsa = &act;
		FUNC3(linux_nsa, nsa);
	} else
		nsa = NULL;
	sig = FUNC4(linux_sig);

	error = FUNC2(td, sig, nsa, osa, 0);
	if (error)
		return (error);

	if (linux_osa != NULL)
		FUNC1(osa, linux_osa);

	return (0);
}