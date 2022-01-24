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
struct sigaction {int /*<<< orphan*/  sa_handler; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; } ;
typedef  int /*<<< orphan*/  sig_t ;

/* Variables and functions */
 int /*<<< orphan*/  SA_RESTART ; 
 int /*<<< orphan*/  SIG_ERR ; 
 scalar_t__ FUNC0 (int,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  _sigintr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

sig_t
FUNC3(int s, sig_t a)
{
	struct sigaction sa, osa;

	sa.sa_handler = a;
	FUNC1(&sa.sa_mask);
	sa.sa_flags = 0;
	if (!FUNC2(&_sigintr, s))
		sa.sa_flags |= SA_RESTART;
	if (FUNC0(s, &sa, &osa) < 0)
		return (SIG_ERR);
	return (osa.sa_handler);
}