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
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  siginfo_t ;

/* Variables and functions */
 size_t INTERPOS_sigtimedwait ; 
 scalar_t__* __libc_interposing ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,struct timespec const*) ; 

int
FUNC1(const sigset_t * __restrict set, siginfo_t * __restrict info,
    const struct timespec * __restrict t)
{

	return (((int (*)(const sigset_t *, siginfo_t *,
	    const struct timespec *))
	    __libc_interposing[INTERPOS_sigtimedwait])(set, info, t));
}