#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct preloaded_file {size_t f_loader; } ;
struct fs_ops {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {int /*<<< orphan*/  (* l_exec ) (struct preloaded_file*) ;} ;
struct TYPE_4__ {scalar_t__ s_addr; } ;

/* Variables and functions */
 int CMD_ERROR ; 
 int /*<<< orphan*/  INADDR_NONE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* command_errmsg ; 
 struct fs_ops dosfs_fsops ; 
 int errno ; 
 int /*<<< orphan*/ * exclusive_file_system ; 
 struct preloaded_file* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__** file_formats ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 (TYPE_1__) ; 
 char* inst_kernel ; 
 char* inst_loader_rc ; 
 char** inst_modules ; 
 char* inst_rootfs ; 
 int FUNC8 (char*) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,struct fs_ops*) ; 
 int FUNC12 (int) ; 
 TYPE_1__ servip ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char const*,...) ; 
 char* FUNC15 (char*,char) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 
 char* FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct preloaded_file*) ; 
 struct fs_ops tftp_fsops ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

__attribute__((used)) static int
FUNC23(char *pkgname)
{
	static char buf[256];
	struct fs_ops *proto;
	struct preloaded_file *fp;
	char *s, *currdev;
	const char *devname;
	int error, fd, i, local;

	s = FUNC19(pkgname, "://");
	if (s == NULL)
		goto invalid_url;

	i = s - pkgname;
	if (i == 4 && !FUNC18(pkgname, "tftp", i)) {
		devname = "net0";
		proto = &tftp_fsops;
		local = 0;
	} else if (i == 4 && !FUNC18(pkgname, "file", i)) {
		currdev = FUNC4("currdev");
		if (currdev != NULL && FUNC16(currdev, "pxe0:") == 0) {
			devname = "pxe0";
			proto = NULL;
		} else {
			devname = "disk1";
			proto = &dosfs_fsops;
		}
		local = 1;
	} else
		goto invalid_url;

	s += 3;
	if (*s == '\0')
		goto invalid_url;

	if (*s != '/' ) {
		if (local)
			goto invalid_url;

		pkgname = FUNC15(s, '/');
		if (pkgname == NULL)
			goto invalid_url;

		*pkgname = '\0';
		servip.s_addr = FUNC6(s);
		if (servip.s_addr == FUNC5(INADDR_NONE))
			goto invalid_url;

		FUNC13("serverip", FUNC7(servip), 1);

		*pkgname = '/';
	} else
		pkgname = s;

	if (FUNC17(devname) + FUNC17(pkgname) + 2 > sizeof(buf)) {
		command_errmsg = "package name too long";
		return (CMD_ERROR);
	}
	FUNC14(buf, "%s:%s", devname, pkgname);
	FUNC13("install_package", buf, 1);

	error = FUNC11(buf, proto);
	if (error) {
		command_errmsg = "cannot open package";
		goto fail;
	}

	/*
	 * Point of no return: unload anything that may have been
	 * loaded and prune the environment from harmful variables.
	 */
	FUNC21();
	FUNC22("vfs.root.mountfrom");

	/*
	 * read the metatags file.
	 */
	fd = FUNC10("/metatags", O_RDONLY);
	if (fd != -1) {
		error = FUNC12(fd);
		FUNC1(fd);
		if (error) {
			command_errmsg = "cannot load metatags";
			goto fail;
		}
	}

	s = (inst_kernel == NULL) ? "/kernel" : inst_kernel;
	error = FUNC9(s, 0, NULL);
	if (error) {
		command_errmsg = "cannot load kernel from package";
		goto fail;
	}

	/* If there is a loader.rc in the package, execute it */
	s = (inst_loader_rc == NULL) ? "/loader.rc" : inst_loader_rc;
	fd = FUNC10(s, O_RDONLY);
	if (fd != -1) {
		FUNC1(fd);
		error = FUNC8(s);
		if (error == CMD_ERROR)
			goto fail;
	}

	i = 0;
	while (inst_modules != NULL && inst_modules[i] != NULL) {
		error = FUNC9(inst_modules[i], 0, NULL);
		if (error) {
			command_errmsg = "cannot load module(s) from package";
			goto fail;
		}
		i++;
	}

	s = (inst_rootfs == NULL) ? "/install.iso" : inst_rootfs;
	if (FUNC3(s, "mfs_root", 1) == NULL) {
		error = errno;
		command_errmsg = "cannot load root file system";
		goto fail;
	}

	FUNC0();

	fp = FUNC2(NULL, NULL);
	if (fp != NULL)
		file_formats[fp->f_loader]->l_exec(fp);
	error = CMD_ERROR;
	command_errmsg = "unable to start installation";

 fail:
	FUNC14(buf, "%s (error %d)", command_errmsg, error);
	FUNC0();
	FUNC21();
	exclusive_file_system = NULL;
	command_errmsg = buf;	/* buf is static. */
	return (CMD_ERROR);

 invalid_url:
	command_errmsg = "invalid URL";
	return (CMD_ERROR);
}