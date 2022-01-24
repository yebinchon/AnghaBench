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
typedef  int sockaddr ;
struct linux_getpeername_args {int /*<<< orphan*/  namelen; int /*<<< orphan*/  addr; int /*<<< orphan*/  s; } ;
typedef  int l_sockaddr ;
typedef  int /*<<< orphan*/  len ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int*,int**,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct thread*,int /*<<< orphan*/ ,int**,int*) ; 

int
FUNC6(struct thread *td, struct linux_getpeername_args *args)
{
	struct l_sockaddr *lsa;
	struct sockaddr *sa;
	int len, error;

	error = FUNC2(FUNC0(args->namelen), &len, sizeof(len));
	if (error != 0)
		return (error);
	if (len < 0)
		return (EINVAL);

	error = FUNC5(td, args->s, &sa, &len);
	if (error != 0)
		return (error);

	if (len != 0) {
		error = FUNC1(sa, &lsa, len);
		if (error == 0)
			error = FUNC3(lsa, FUNC0(args->addr),
			    len);
		FUNC4(lsa, M_SONAME);
	}

	FUNC4(sa, M_SONAME);
	if (error == 0)
		error = FUNC3(&len, FUNC0(args->namelen), sizeof(len));
	return (error);
}