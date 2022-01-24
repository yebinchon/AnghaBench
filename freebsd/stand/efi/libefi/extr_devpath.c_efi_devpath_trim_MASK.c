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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

EFI_DEVICE_PATH *
FUNC6(EFI_DEVICE_PATH *devpath)
{
	EFI_DEVICE_PATH *node, *copy;
	size_t prefix, len;

	if ((node = FUNC3(devpath)) == NULL)
		return (NULL);
	prefix = (UINT8 *)node - (UINT8 *)devpath;
	if (prefix == 0)
		return (NULL);
	len = prefix + FUNC0(FUNC1(node));
	copy = FUNC4(len);
	if (copy != NULL) {
		FUNC5(copy, devpath, prefix);
		node = (EFI_DEVICE_PATH *)((UINT8 *)copy + prefix);
		FUNC2(node);
	}
	return (copy);
}