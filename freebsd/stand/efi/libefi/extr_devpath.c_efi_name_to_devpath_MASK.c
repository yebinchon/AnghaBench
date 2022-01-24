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
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;
typedef  int /*<<< orphan*/  CHAR16 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ **,size_t*) ; 

EFI_DEVICE_PATH *
FUNC3(const char *path)
{
	EFI_DEVICE_PATH *devpath;
	CHAR16 *uv;
	size_t ul;

	uv = NULL;
	if (FUNC2(path, &uv, &ul) != 0)
		return (NULL);
	devpath = FUNC0(uv);
	FUNC1(uv);
	return (devpath);
}