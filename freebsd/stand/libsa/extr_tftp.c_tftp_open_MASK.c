#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tftp_handle {struct tftp_handle* pkt; struct tftp_handle* path; scalar_t__ off; struct iodesc* iodesc; int /*<<< orphan*/  tftp_blksize; } ;
struct open_file {struct tftp_handle* f_fsdata; scalar_t__ f_devdata; TYPE_1__* f_dev; } ;
struct iodesc {int /*<<< orphan*/  destip; } ;
struct TYPE_2__ {scalar_t__ dv_type; } ;

/* Variables and functions */
 scalar_t__ DEVT_NET ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ NET_TFTP ; 
 int /*<<< orphan*/  TFTP_REQUESTED_BLKSIZE ; 
 struct tftp_handle* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tftp_handle*) ; 
 int is_open ; 
 struct tftp_handle* FUNC2 (size_t) ; 
 scalar_t__ netproto ; 
 char* rootpath ; 
 int /*<<< orphan*/  servip ; 
 int FUNC3 (struct tftp_handle*,size_t,char*,char*,char const*,char const*) ; 
 struct iodesc* FUNC4 (int) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (struct tftp_handle*) ; 

__attribute__((used)) static int
FUNC7(const char *path, struct open_file *f)
{
	struct tftp_handle *tftpfile;
	struct iodesc	*io;
	int		res;
	size_t		pathsize;
	const char	*extraslash;

	if (netproto != NET_TFTP)
		return (EINVAL);

	if (f->f_dev->dv_type != DEVT_NET)
		return (EINVAL);

	if (is_open)
		return (EBUSY);

	tftpfile = FUNC0(1, sizeof(*tftpfile));
	if (!tftpfile)
		return (ENOMEM);

	tftpfile->tftp_blksize = TFTP_REQUESTED_BLKSIZE;
	tftpfile->iodesc = io = FUNC4(*(int *)(f->f_devdata));
	if (io == NULL) {
		FUNC1(tftpfile);
		return (EINVAL);
	}

	io->destip = servip;
	tftpfile->off = 0;
	pathsize = (FUNC5(rootpath) + 1 + FUNC5(path) + 1) * sizeof(char);
	tftpfile->path = FUNC2(pathsize);
	if (tftpfile->path == NULL) {
		FUNC1(tftpfile);
		return (ENOMEM);
	}
	if (rootpath[FUNC5(rootpath) - 1] == '/' || path[0] == '/')
		extraslash = "";
	else
		extraslash = "/";
	res = FUNC3(tftpfile->path, pathsize, "%s%s%s",
	    rootpath, extraslash, path);
	if (res < 0 || res > pathsize) {
		FUNC1(tftpfile->path);
		FUNC1(tftpfile);
		return (ENOMEM);
	}

	res = FUNC6(tftpfile);

	if (res) {
		FUNC1(tftpfile->path);
		FUNC1(tftpfile->pkt);
		FUNC1(tftpfile);
		return (res);
	}
	f->f_fsdata = tftpfile;
	is_open = 1;
	return (0);
}