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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  efidp ;
typedef  size_t UINTN ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH_PROTOCOL ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

ssize_t
FUNC4(char *path, efidp out, size_t max)
{
	EFI_DEVICE_PATH_PROTOCOL *dp;
	UINTN len;

	dp = FUNC1 (path);
	if (dp == NULL)
		return -1;
	len = FUNC0(dp);
	if (len > max) {
		FUNC2(dp);
		return -1;
	}
	FUNC3(out, dp, len);
	FUNC2(dp);

	return len;
}