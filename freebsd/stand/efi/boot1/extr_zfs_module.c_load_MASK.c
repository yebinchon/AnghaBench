#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct zfsmount {int dummy; } ;
struct stat {size_t st_size; } ;
struct TYPE_8__ {char* spa_name; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  dnode_phys_t ;
struct TYPE_9__ {int /*<<< orphan*/  devpath; TYPE_1__* devdata; } ;
typedef  TYPE_2__ dev_info_t ;
typedef  int /*<<< orphan*/  EFI_STATUS ;
typedef  int /*<<< orphan*/  CHAR16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  EFI_INVALID_PARAMETER ; 
 int /*<<< orphan*/  EFI_NOT_FOUND ; 
 int /*<<< orphan*/  EFI_SUCCESS ; 
 int ENOENT ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,...) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,struct stat*) ; 
 int FUNC8 (struct zfsmount*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,struct zfsmount*) ; 
 int FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static EFI_STATUS
FUNC11(const char *filepath, dev_info_t *devinfo, void **bufp, size_t *bufsize)
{
	spa_t *spa;
	struct zfsmount zmount;
	dnode_phys_t dn;
	struct stat st;
	int err;
	void *buf;

	spa = devinfo->devdata;

#ifdef EFI_DEBUG
	{
		CHAR16 *text = efi_devpath_name(devinfo->devpath);
		DPRINTF("load: '%s' spa: '%s', devpath: %S\n", filepath,
		    spa->spa_name, text);
		efi_free_devpath_name(text);
	}
#endif
	if ((err = FUNC10(spa)) != 0) {
		FUNC0("Failed to load pool '%s' (%d)\n", spa->spa_name, err);
		return (EFI_NOT_FOUND);
	}

	if ((err = FUNC9(spa, 0, &zmount)) != 0) {
		FUNC0("Failed to mount pool '%s' (%d)\n", spa->spa_name, err);
		return (EFI_NOT_FOUND);
	}

	if ((err = FUNC8(&zmount, filepath, &dn)) != 0) {
		if (err == ENOENT) {
			FUNC0("Failed to find '%s' on pool '%s' (%d)\n",
			    filepath, spa->spa_name, err);
			return (EFI_NOT_FOUND);
		}
		FUNC6("Failed to lookup '%s' on pool '%s' (%d)\n", filepath,
		    spa->spa_name, err);
		return (EFI_INVALID_PARAMETER);
	}

	if ((err = FUNC7(spa, &dn, &st)) != 0) {
		FUNC6("Failed to stat '%s' on pool '%s' (%d)\n", filepath,
		    spa->spa_name, err);
		return (EFI_INVALID_PARAMETER);
	}

	buf = FUNC5(st.st_size);
	if (buf == NULL) {
		FUNC6("Failed to allocate load buffer %jd for pool '%s' for '%s' ",
		    (intmax_t)st.st_size, spa->spa_name, filepath);
		return (EFI_INVALID_PARAMETER);
	}

	if ((err = FUNC1(spa, &dn, 0, buf, st.st_size)) != 0) {
		FUNC6("Failed to read node from %s (%d)\n", spa->spa_name,
		    err);
		FUNC4(buf);
		return (EFI_INVALID_PARAMETER);
	}

	*bufsize = st.st_size;
	*bufp = buf;

	return (EFI_SUCCESS);
}