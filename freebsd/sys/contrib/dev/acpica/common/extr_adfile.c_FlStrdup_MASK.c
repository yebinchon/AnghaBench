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
typedef  scalar_t__ ACPI_SIZE ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3 (
    char                *String)
{
    char                *NewString;


    NewString = FUNC0 ((ACPI_SIZE) FUNC2 (String) + 1);
    FUNC1 (NewString, String);
    return (NewString);
}