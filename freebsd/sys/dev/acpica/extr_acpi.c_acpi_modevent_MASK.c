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
struct module {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EPERM ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  POWER_PM_TYPE_ACPI ; 
 int /*<<< orphan*/  cold ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(struct module *mod, int event, void *junk)
{
    switch (event) {
    case MOD_LOAD:
	if (!cold) {
	    FUNC1("The ACPI driver cannot be loaded after boot.\n");
	    return (EPERM);
	}
	break;
    case MOD_UNLOAD:
	if (!cold && FUNC0() == POWER_PM_TYPE_ACPI)
	    return (EBUSY);
	break;
    default:
	break;
    }
    return (0);
}