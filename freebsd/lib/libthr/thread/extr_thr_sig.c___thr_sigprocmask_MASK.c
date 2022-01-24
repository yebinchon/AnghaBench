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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCANCEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SIG_UNBLOCK ; 
 int FUNC1 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int
FUNC2(int how, const sigset_t *set, sigset_t *oset)
{
	const sigset_t *p = set;
	sigset_t newset;

	if (how != SIG_UNBLOCK) {
		if (set != NULL) {
			newset = *set;
			FUNC0(newset, SIGCANCEL);
			p = &newset;
		}
	}
	return (FUNC1(how, p, oset));
}