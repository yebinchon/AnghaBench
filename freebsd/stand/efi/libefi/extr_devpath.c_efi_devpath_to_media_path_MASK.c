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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MEDIA_DEVICE_PATH ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

EFI_DEVICE_PATH *
FUNC3(EFI_DEVICE_PATH *path)
{

	while (!FUNC1(path)) {
		if (FUNC0(path) == MEDIA_DEVICE_PATH)
			return (path);
		path = FUNC2(path);
	}
	return (NULL);
}