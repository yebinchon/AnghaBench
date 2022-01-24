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
typedef  int UINT8 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  AE_BAD_HEX_CONSTANT ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

ACPI_STATUS
FUNC2 (
    char                    *TwoAsciiChars,
    UINT8                   *ReturnByte)
{

    /* Both ASCII characters must be valid hex digits */

    if (!FUNC1 ((int) TwoAsciiChars[0]) ||
        !FUNC1 ((int) TwoAsciiChars[1]))
    {
        return (AE_BAD_HEX_CONSTANT);
    }

    *ReturnByte =
        FUNC0 (TwoAsciiChars[1]) |
        (FUNC0 (TwoAsciiChars[0]) << 4);

    return (AE_OK);
}