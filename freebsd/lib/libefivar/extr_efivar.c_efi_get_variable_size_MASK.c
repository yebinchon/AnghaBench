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
typedef  int /*<<< orphan*/  efi_guid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 

int
FUNC1(efi_guid_t guid, const char *name,
    size_t *size)
{

	/* XXX check to make sure this matches the linux value */

	*size = 0;
	return FUNC0(guid, name, NULL, size, NULL);
}