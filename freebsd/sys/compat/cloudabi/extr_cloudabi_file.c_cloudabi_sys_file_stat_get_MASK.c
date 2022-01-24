#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  fd; } ;
struct cloudabi_sys_file_stat_get_args {int /*<<< orphan*/  buf; TYPE_1__ fd; int /*<<< orphan*/  path_len; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  csb ;
struct TYPE_7__ {void* st_filetype; } ;
typedef  TYPE_2__ cloudabi_filestat_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 void* CLOUDABI_FILETYPE_BLOCK_DEVICE ; 
 void* CLOUDABI_FILETYPE_CHARACTER_DEVICE ; 
 void* CLOUDABI_FILETYPE_DIRECTORY ; 
 void* CLOUDABI_FILETYPE_REGULAR_FILE ; 
 void* CLOUDABI_FILETYPE_SOCKET_STREAM ; 
 void* CLOUDABI_FILETYPE_SYMBOLIC_LINK ; 
 void* CLOUDABI_FILETYPE_UNKNOWN ; 
 int CLOUDABI_LOOKUP_SYMLINK_FOLLOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct stat*,TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct stat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

int
FUNC13(struct thread *td,
    struct cloudabi_sys_file_stat_get_args *uap)
{
	struct stat sb;
	cloudabi_filestat_t csb;
	char *path;
	int error;

	FUNC12(&csb, 0, sizeof(csb));

	error = FUNC9(uap->path, uap->path_len, &path);
	if (error != 0)
		return (error);

	error = FUNC11(td,
	    (uap->fd.flags & CLOUDABI_LOOKUP_SYMLINK_FOLLOW) != 0 ? 0 :
	    AT_SYMLINK_NOFOLLOW, uap->fd.fd, path, UIO_SYSSPACE, &sb, NULL);
	FUNC7(path);
	if (error != 0)
		return (error);

	/* Convert results and return them. */
	FUNC8(&sb, &csb);
	if (FUNC0(sb.st_mode))
		csb.st_filetype = CLOUDABI_FILETYPE_BLOCK_DEVICE;
	else if (FUNC1(sb.st_mode))
		csb.st_filetype = CLOUDABI_FILETYPE_CHARACTER_DEVICE;
	else if (FUNC2(sb.st_mode))
		csb.st_filetype = CLOUDABI_FILETYPE_DIRECTORY;
	else if (FUNC3(sb.st_mode))
		csb.st_filetype = CLOUDABI_FILETYPE_SOCKET_STREAM;
	else if (FUNC5(sb.st_mode))
		csb.st_filetype = CLOUDABI_FILETYPE_REGULAR_FILE;
	else if (FUNC6(sb.st_mode)) {
		/* Inaccurate, but the best that we can do. */
		csb.st_filetype = CLOUDABI_FILETYPE_SOCKET_STREAM;
	} else if (FUNC4(sb.st_mode))
		csb.st_filetype = CLOUDABI_FILETYPE_SYMBOLIC_LINK;
	else
		csb.st_filetype = CLOUDABI_FILETYPE_UNKNOWN;
	return (FUNC10(&csb, uap->buf, sizeof(csb)));
}