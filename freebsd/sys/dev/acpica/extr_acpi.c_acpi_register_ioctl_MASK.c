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
typedef  int /*<<< orphan*/  u_long ;
struct acpi_ioctl_hook {void* arg; int /*<<< orphan*/  fn; int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  acpi_ioctl_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_ACPIDEV ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct acpi_ioctl_hook*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi ; 
 int /*<<< orphan*/  acpi_ioctl_hooks ; 
 int acpi_ioctl_hooks_initted ; 
 int /*<<< orphan*/  link ; 
 struct acpi_ioctl_hook* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(u_long cmd, acpi_ioctl_fn fn, void *arg)
{
    struct acpi_ioctl_hook	*hp;

    if ((hp = FUNC4(sizeof(*hp), M_ACPIDEV, M_NOWAIT)) == NULL)
	return (ENOMEM);
    hp->cmd = cmd;
    hp->fn = fn;
    hp->arg = arg;

    FUNC0(acpi);
    if (acpi_ioctl_hooks_initted == 0) {
	FUNC2(&acpi_ioctl_hooks);
	acpi_ioctl_hooks_initted = 1;
    }
    FUNC3(&acpi_ioctl_hooks, hp, link);
    FUNC1(acpi);

    return (0);
}