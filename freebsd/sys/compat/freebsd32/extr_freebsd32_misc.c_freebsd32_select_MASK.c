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
typedef  int /*<<< orphan*/  tv32 ;
struct timeval32 {int dummy; } ;
struct timeval {int dummy; } ;
struct thread {int dummy; } ;
struct freebsd32_select_args {int /*<<< orphan*/  ex; int /*<<< orphan*/  ou; int /*<<< orphan*/  in; int /*<<< orphan*/  nd; int /*<<< orphan*/ * tv; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval32,struct timeval,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct timeval32*,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int) ; 
 int /*<<< orphan*/  tv_sec ; 
 int /*<<< orphan*/  tv_usec ; 

int
FUNC3(struct thread *td, struct freebsd32_select_args *uap)
{
	struct timeval32 tv32;
	struct timeval tv, *tvp;
	int error;

	if (uap->tv != NULL) {
		error = FUNC1(uap->tv, &tv32, sizeof(tv32));
		if (error)
			return (error);
		FUNC0(tv32, tv, tv_sec);
		FUNC0(tv32, tv, tv_usec);
		tvp = &tv;
	} else
		tvp = NULL;
	/*
	 * XXX Do pointers need PTRIN()?
	 */
	return (FUNC2(td, uap->nd, uap->in, uap->ou, uap->ex, tvp,
	    sizeof(int32_t) * 8));
}