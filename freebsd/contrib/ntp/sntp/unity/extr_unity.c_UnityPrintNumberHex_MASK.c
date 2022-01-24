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
typedef  char _U_UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 

void FUNC1(const _U_UINT number, const char nibbles_to_print)
{
    _U_UINT nibble;
    char nibbles = nibbles_to_print;
    FUNC0('0');
    FUNC0('x');

    while (nibbles > 0)
    {
        nibble = (number >> (--nibbles << 2)) & 0x0000000F;
        if (nibble <= 9)
        {
            FUNC0((char)('0' + nibble));
        }
        else
        {
            FUNC0((char)('A' - 10 + nibble));
        }
    }
}