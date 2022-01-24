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
typedef  int /*<<< orphan*/ * EFI_HANDLE ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

EFI_HANDLE
FUNC3(EFI_DEVICE_PATH *path, EFI_HANDLE *handles, unsigned nhandles)
{
	unsigned i;
	EFI_DEVICE_PATH *media, *devpath;
	EFI_HANDLE h;

	media = FUNC1(path);
	if (media == NULL)
		return (NULL);
	for (i = 0; i < nhandles; i++) {
		h = handles[i];
		devpath = FUNC2(h);
		if (devpath == NULL)
			continue;
		if (!FUNC0(media, FUNC1(devpath)))
			continue;
		return (h);
	}
	return (NULL);
}