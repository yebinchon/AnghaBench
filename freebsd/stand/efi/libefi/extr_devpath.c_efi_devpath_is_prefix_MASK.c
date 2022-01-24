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
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

bool
FUNC6(EFI_DEVICE_PATH *prefix, EFI_DEVICE_PATH *path)
{
	size_t len;

	if (prefix == NULL || path == NULL)
		return (false);

	while (1) {
		if (FUNC3(prefix))
			break;

		if (FUNC2(prefix) != FUNC2(path) ||
		    FUNC1(prefix) != FUNC1(path))
			return (false);

		len = FUNC0(prefix);
		if (len != FUNC0(path))
			return (false);

		if (FUNC5(prefix, path, len) != 0)
			return (false);

		prefix = FUNC4(prefix);
		path = FUNC4(path);
	}
	return (true);
}