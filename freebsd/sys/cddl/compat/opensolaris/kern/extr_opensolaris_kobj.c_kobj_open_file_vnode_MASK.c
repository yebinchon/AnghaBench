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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct nameidata {void* ni_vp; } ;

/* Variables and functions */
 int FREAD ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct thread*) ; 
 int O_NOFOLLOW ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct nameidata*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC5(const char *file)
{
	struct thread *td = curthread;
	struct nameidata nd;
	int error, flags;

	FUNC3();

	flags = FREAD | O_NOFOLLOW;
	FUNC1(&nd, LOOKUP, 0, UIO_SYSSPACE, file, td);
	error = FUNC4(&nd, &flags, 0, 0, curthread->td_ucred, NULL);
	if (error != 0)
		return (NULL);
	FUNC0(&nd, NDF_ONLY_PNBUF);
	/* We just unlock so we hold a reference. */
	FUNC2(nd.ni_vp, 0);
	return (nd.ni_vp);
}