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
 int /*<<< orphan*/  EV_VOLATILE ; 
 int /*<<< orphan*/  efi_setcurrdev ; 
 int /*<<< orphan*/  env_noset ; 
 int /*<<< orphan*/  env_nounset ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(const char *devname)
{

	FUNC0("currdev", EV_VOLATILE, devname, efi_setcurrdev, env_nounset);
	FUNC0("loaddev", EV_VOLATILE, devname, env_noset, env_nounset);
}