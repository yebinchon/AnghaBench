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
typedef  scalar_t__ u_int32_t ;
struct image_args {int dummy; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef  int /*<<< orphan*/  arg ;

/* Variables and functions */
 int EFAULT ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int /*<<< orphan*/  FUNC1 (struct image_args*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC3 (struct image_args*) ; 
 int FUNC4 (struct image_args*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct image_args*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct image_args*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct image_args*) ; 

int
FUNC8(struct image_args *args, const char *fname,
    enum uio_seg segflg, u_int32_t *argv, u_int32_t *envv)
{
	char *argp, *envp;
	u_int32_t *p32, arg;
	int error;

	FUNC1(args, sizeof(*args));
	if (argv == NULL)
		return (EFAULT);

	/*
	 * Allocate demand-paged memory for the file name, argument, and
	 * environment strings.
	 */
	error = FUNC3(args);
	if (error != 0)
		return (error);

	/*
	 * Copy the file name.
	 */
	error = FUNC6(args, fname, segflg);
	if (error != 0)
		goto err_exit;

	/*
	 * extract arguments first
	 */
	p32 = argv;
	for (;;) {
		error = FUNC2(p32++, &arg, sizeof(arg));
		if (error)
			goto err_exit;
		if (arg == 0)
			break;
		argp = FUNC0(arg);
		error = FUNC4(args, argp, UIO_USERSPACE);
		if (error != 0)
			goto err_exit;
	}
			
	/*
	 * extract environment strings
	 */
	if (envv) {
		p32 = envv;
		for (;;) {
			error = FUNC2(p32++, &arg, sizeof(arg));
			if (error)
				goto err_exit;
			if (arg == 0)
				break;
			envp = FUNC0(arg);
			error = FUNC5(args, envp, UIO_USERSPACE);
			if (error != 0)
				goto err_exit;
		}
	}

	return (0);

err_exit:
	FUNC7(args);
	return (error);
}