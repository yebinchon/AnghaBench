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
 int ACPI_STATE_S0 ; 
 int ACPI_STATE_S5 ; 
 int ACPI_STATE_UNKNOWN ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 char FUNC1 (char const) ; 

__attribute__((used)) static int
FUNC2(const char *sname)
{
    int sstate;

    if (FUNC1(sname[0]) == 'S') {
	sstate = sname[1] - '0';
	if (sstate >= ACPI_STATE_S0 && sstate <= ACPI_STATE_S5 &&
	    sname[2] == '\0')
	    return (sstate);
    } else if (FUNC0(sname, "NONE") == 0)
	return (ACPI_STATE_UNKNOWN);
    return (-1);
}