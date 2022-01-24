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
struct thread {scalar_t__* td_retval; } ;
struct socket {scalar_t__ so_type; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  struct sockaddr l_sockaddr ;
struct file {struct socket* f_data; } ;
typedef  int /*<<< orphan*/  len ;
typedef  int l_uintptr_t ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 scalar_t__ SOCK_DGRAM ; 
 int FUNC1 (struct sockaddr*,struct sockaddr**,int) ; 
 int /*<<< orphan*/  cap_accept_rights ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC3 (struct sockaddr*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct thread*,int,int /*<<< orphan*/ *,struct file**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct thread*,int,struct sockaddr**,int*,int,struct file**) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*,scalar_t__) ; 
 int FUNC9 (int,int*) ; 

__attribute__((used)) static int
FUNC10(struct thread *td, int s, l_uintptr_t addr,
    l_uintptr_t namelen, int flags)
{
	struct l_sockaddr *lsa;
	struct sockaddr *sa;
	struct file *fp;
	int bflags, len;
	struct socket *so;
	int error, error1;

	bflags = 0;
	error = FUNC9(flags, &bflags);
	if (error != 0)
		return (error);

	sa = NULL;
	if (FUNC0(addr) == NULL) {
		len = 0;
		error = FUNC7(td, s, NULL, NULL, bflags, NULL);
	} else {
		error = FUNC2(FUNC0(namelen), &len, sizeof(len));
		if (error != 0)
			return (error);
		if (len < 0)
			return (EINVAL);
		error = FUNC7(td, s, &sa, &len, bflags, &fp);
		if (error == 0)
			FUNC4(fp, td);
	}

	if (error != 0) {
		/*
		 * XXX. This is wrong, different sockaddr structures
		 * have different sizes.
		 */
		if (error == EFAULT && namelen != sizeof(struct sockaddr_in))
		{
			error = EINVAL;
			goto out;
		}
		if (error == EINVAL) {
			error1 = FUNC6(td, s, &cap_accept_rights, &fp, NULL, NULL);
			if (error1 != 0) {
				error = error1;
				goto out;
			}
			so = fp->f_data;
			if (so->so_type == SOCK_DGRAM)
				error = EOPNOTSUPP;
			FUNC4(fp, td);
		}
		goto out;
	}

	if (len != 0 && error == 0) {
		error = FUNC1(sa, &lsa, len);
		if (error == 0)
			error = FUNC3(lsa, FUNC0(addr), len);
		FUNC5(lsa, M_SONAME);
	}

	FUNC5(sa, M_SONAME);

out:
	if (error != 0) {
		(void)FUNC8(td, td->td_retval[0]);
		td->td_retval[0] = 0;
	}
	return (error);
}