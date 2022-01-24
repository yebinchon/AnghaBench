#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ufs_ino_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  devpath; } ;
typedef  TYPE_1__ dev_info_t ;
typedef  int /*<<< orphan*/  EFI_STATUS ;
typedef  int /*<<< orphan*/  CHAR16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  EFI_INVALID_PARAMETER ; 
 int /*<<< orphan*/  EFI_NOT_FOUND ; 
 int /*<<< orphan*/  EFI_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  EFI_SUCCESS ; 
 int /*<<< orphan*/  EFI_UNSUPPORTED ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int,void*,size_t) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int FUNC7 (char const*) ; 
 void* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static EFI_STATUS
FUNC10(const char *filepath, dev_info_t *dev, void **bufp, size_t *bufsize)
{
	ufs_ino_t ino;
	size_t size;
	ssize_t read;
	void *buf;

#ifdef EFI_DEBUG
	{
		CHAR16 *text = efi_devpath_name(dev->devpath);
		DPRINTF("UFS Loading '%s' from %S\n", filepath, text);
		efi_free_devpath_name(text);
	}
#endif
	if (FUNC6(dev) < 0) {
		FUNC0("Failed to init device\n");
		return (EFI_UNSUPPORTED);
	}

	if ((ino = FUNC7(filepath)) == 0) {
		FUNC0("Failed to lookup '%s' (file not found?)\n", filepath);
		return (EFI_NOT_FOUND);
	}

	if (FUNC5(ino, NULL, 0, &size) < 0 || size <= 0) {
		FUNC9("Failed to read size of '%s' ino: %d\n", filepath, ino);
		return (EFI_INVALID_PARAMETER);
	}

	buf = FUNC8(size);
	if (buf == NULL) {
		FUNC9("Failed to allocate read buffer %zu for '%s'\n",
		    size, filepath);
		return (EFI_OUT_OF_RESOURCES);
	}

	read = FUNC4(ino, buf, size);
	if ((size_t)read != size) {
		FUNC9("Failed to read '%s' (%zd != %zu)\n", filepath, read,
		    size);
		FUNC3(buf);
		return (EFI_INVALID_PARAMETER);
	}

	FUNC0("Load complete\n");

	*bufp = buf;
	*bufsize = size;

	return (EFI_SUCCESS);
}