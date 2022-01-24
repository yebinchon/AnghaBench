#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct stat {int dummy; } ;
struct file {int dummy; } ;
struct cloudabi_sys_file_stat_fget_args {int /*<<< orphan*/  buf; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  csb ;
typedef  int /*<<< orphan*/  cloudabi_filetype_t ;
struct TYPE_5__ {int /*<<< orphan*/  st_filetype; } ;
typedef  TYPE_1__ cloudabi_filestat_t ;

/* Variables and functions */
 int /*<<< orphan*/  cap_fstat_rights ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct stat*,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC5 (struct file*,struct stat*,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int
FUNC7(struct thread *td,
    struct cloudabi_sys_file_stat_fget_args *uap)
{
	struct stat sb;
	cloudabi_filestat_t csb;
	struct file *fp;
	cloudabi_filetype_t filetype;
	int error;

	FUNC6(&csb, 0, sizeof(csb));

	/* Fetch file descriptor attributes. */
	error = FUNC4(td, uap->fd, &cap_fstat_rights, &fp);
	if (error != 0)
		return (error);
	error = FUNC5(fp, &sb, td->td_ucred, td);
	if (error != 0) {
		FUNC3(fp, td);
		return (error);
	}
	filetype = FUNC0(fp);
	FUNC3(fp, td);

	/* Convert attributes to CloudABI's format. */
	FUNC1(&sb, &csb);
	csb.st_filetype = filetype;
	return (FUNC2(&csb, uap->buf, sizeof(csb)));
}