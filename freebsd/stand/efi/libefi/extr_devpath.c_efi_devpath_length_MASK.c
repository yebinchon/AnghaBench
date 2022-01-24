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
typedef  scalar_t__ UINTN ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

UINTN
FUNC3(EFI_DEVICE_PATH  *path)
{
	EFI_DEVICE_PATH *start = path;

	while (!FUNC1(path))
		path = FUNC2(path);
	return ((UINTN)path - (UINTN)start) + FUNC0(path);
}