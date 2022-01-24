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
struct TYPE_2__ {int /*<<< orphan*/  (* AllocatePool ) (int /*<<< orphan*/ ,size_t,void**) ;} ;
typedef  int /*<<< orphan*/  EFI_STATUS ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;
typedef  char CHAR16 ;

/* Variables and functions */
 TYPE_1__* BS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EfiLoaderData ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,void**) ; 
 int FUNC5 (char*,char**,size_t*) ; 

__attribute__((used)) static CHAR16 *
FUNC6(EFI_DEVICE_PATH *devpath)
{
	char *name = NULL;
	CHAR16 *ptr = NULL;
	size_t len;
	int rv;

	name = FUNC1(devpath);
	if (name == NULL)
		return (NULL);

	/*
	 * We need to return memory from AllocatePool, so it can be freed
	 * with FreePool() in efi_free_devpath_name().
	 */
	rv = FUNC5(name, &ptr, &len);
	FUNC2(name);
	if (rv == 0) {
		CHAR16 *out = NULL;
		EFI_STATUS status;

		status = BS->AllocatePool(EfiLoaderData, len, (void **)&out);
		if (FUNC0(status)) {
			FUNC2(ptr);
                	return (out);
		}
		FUNC3(out, ptr, len);
		FUNC2(ptr);
		ptr = out;
	}
	
	return (ptr);
}