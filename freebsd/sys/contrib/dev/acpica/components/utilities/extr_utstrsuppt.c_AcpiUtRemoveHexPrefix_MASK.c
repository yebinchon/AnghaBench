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
 char ACPI_ASCII_ZERO ; 
 char FUNC0 (int) ; 

void
FUNC1 (
    char                    **String)
{
    if ((**String == ACPI_ASCII_ZERO) &&
        (FUNC0 ((int) *(*String + 1)) == 'x'))
    {
        *String += 2;        /* Go past the leading 0x */
    }
}