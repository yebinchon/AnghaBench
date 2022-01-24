#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  devhandle; int /*<<< orphan*/  devpath; } ;
typedef  TYPE_1__ dev_info_t ;
struct TYPE_10__ {scalar_t__ (* load ) (int /*<<< orphan*/ ,TYPE_1__*,void**,size_t*) ;char* name; } ;
typedef  TYPE_2__ boot_module_t ;
struct TYPE_12__ {scalar_t__ (* LoadImage ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ *) ;scalar_t__ (* StartImage ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_11__ {size_t LoadOptionsSize; char* LoadOptions; int /*<<< orphan*/  DeviceHandle; } ;
typedef  scalar_t__ EFI_STATUS ;
typedef  TYPE_3__ EFI_LOADED_IMAGE ;
typedef  int /*<<< orphan*/  EFI_HANDLE ;

/* Variables and functions */
 TYPE_8__* BS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ EFI_NOT_FOUND ; 
 scalar_t__ EFI_SUCCESS ; 
 int /*<<< orphan*/  IH ; 
 int /*<<< orphan*/  LoadedImageGUID ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  PATH_CONFIG ; 
 int /*<<< orphan*/  PATH_DOTCONFIG ; 
 int /*<<< orphan*/  PATH_LOADER_EFI ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 char* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,void**,size_t*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,void**,size_t*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

EFI_STATUS
FUNC13(const boot_module_t *mod, dev_info_t *dev, void *loaderbuf, size_t loadersize)
{
	size_t bufsize, cmdsize;
	void *buf;
	char *cmd;
	EFI_HANDLE loaderhandle;
	EFI_LOADED_IMAGE *loaded_image;
	EFI_STATUS status;

	/*
	 * Read in and parse the command line from /boot.config or /boot/config,
	 * if present. We'll pass it the next stage via a simple ASCII
	 * string. loader.efi has a hack for ASCII strings, so we'll use that to
	 * keep the size down here. We only try to read the alternate file if
	 * we get EFI_NOT_FOUND because all other errors mean that the boot_module
	 * had troubles with the filesystem. We could return early, but we'll let
	 * loading the actual kernel sort all that out. Since these files are
	 * optional, we don't report errors in trying to read them.
	 */
	cmd = NULL;
	cmdsize = 0;
	status = mod->load(PATH_DOTCONFIG, dev, &buf, &bufsize);
	if (status == EFI_NOT_FOUND)
		status = mod->load(PATH_CONFIG, dev, &buf, &bufsize);
	if (status == EFI_SUCCESS) {
		cmdsize = bufsize + 1;
		cmd = FUNC6(cmdsize);
		if (cmd == NULL)
			goto errout;
		FUNC7(cmd, buf, bufsize);
		cmd[bufsize] = '\0';
		FUNC5(buf);
		buf = NULL;
	}

	if ((status = BS->LoadImage(TRUE, IH, FUNC4(dev->devpath),
	    loaderbuf, loadersize, &loaderhandle)) != EFI_SUCCESS) {
		FUNC8("Failed to load image provided by %s, size: %zu, (%lu)\n",
		     mod->name, loadersize, FUNC2(status));
		goto errout;
	}

	status = FUNC3(loaderhandle, &LoadedImageGUID,
	    (void **)&loaded_image);
	if (status != EFI_SUCCESS) {
		FUNC8("Failed to query LoadedImage provided by %s (%lu)\n",
		    mod->name, FUNC2(status));
		goto errout;
	}

	if (cmd != NULL)
		FUNC8("    command args: %s\n", cmd);

	loaded_image->DeviceHandle = dev->devhandle;
	loaded_image->LoadOptionsSize = cmdsize;
	loaded_image->LoadOptions = cmd;

	FUNC0("Starting '%s' in 5 seconds...", PATH_LOADER_EFI);
	FUNC1(1000000);
	FUNC0(".");
	FUNC1(1000000);
	FUNC0(".");
	FUNC1(1000000);
	FUNC0(".");
	FUNC1(1000000);
	FUNC0(".");
	FUNC1(1000000);
	FUNC0(".\n");

	if ((status = BS->StartImage(loaderhandle, NULL, NULL)) !=
	    EFI_SUCCESS) {
		FUNC8("Failed to start image provided by %s (%lu)\n",
		    mod->name, FUNC2(status));
		loaded_image->LoadOptionsSize = 0;
		loaded_image->LoadOptions = NULL;
	}

errout:
	if (cmd != NULL)
		FUNC5(cmd);
	if (buf != NULL)
		FUNC5(buf);
	if (loaderbuf != NULL)
		FUNC5(loaderbuf);

	return (status);
}