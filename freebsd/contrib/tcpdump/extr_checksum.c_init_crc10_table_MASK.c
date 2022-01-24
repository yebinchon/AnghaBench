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
typedef  int /*<<< orphan*/  verify_crc10_table ;
typedef  int uint16_t ;

/* Variables and functions */
 int CRC10_POLYNOMIAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  crc10_table ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void)
{
#define CRC10_POLYNOMIAL 0x633
    register int i, j;
    register uint16_t accum;
    uint16_t verify_crc10_table[256];

    for ( i = 0;  i < 256;  i++ )
    {
        accum = ((unsigned short) i << 2);
        for ( j = 0;  j < 8;  j++ )
        {
            if ((accum <<= 1) & 0x400) accum ^= CRC10_POLYNOMIAL;
        }
        verify_crc10_table[i] = accum;
    }
    FUNC0(FUNC1(verify_crc10_table,
				  crc10_table,
				  sizeof(verify_crc10_table)) == 0);
#undef CRC10_POLYNOMIAL
}