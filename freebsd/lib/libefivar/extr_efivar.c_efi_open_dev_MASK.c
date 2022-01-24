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

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int efi_fd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void)
{

	if (efi_fd == -2)
		efi_fd = FUNC1("/dev/efi", O_RDWR);
	if (efi_fd < 0)
		efi_fd = -1;
	else
		FUNC0();
	return (efi_fd);
}