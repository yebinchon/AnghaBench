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
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,char const*,int,char**,int,int) ; 
 int /*<<< orphan*/  linux_emul_path ; 

int
FUNC1(struct thread *td, const char *path, enum uio_seg pathseg,
    char **pbuf, int cflag, int dfd)
{
	int retval;

	retval = FUNC0(td, linux_emul_path, path, pathseg, pbuf,
	    cflag, dfd);

	return (retval);
}