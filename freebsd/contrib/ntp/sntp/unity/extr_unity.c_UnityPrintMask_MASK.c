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
typedef  int _U_UINT ;
typedef  int _US32 ;

/* Variables and functions */
 int UNITY_INT_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (char) ; 

void FUNC1(const _U_UINT mask, const _U_UINT number)
{
    _U_UINT current_bit = (_U_UINT)1 << (UNITY_INT_WIDTH - 1);
    _US32 i;

    for (i = 0; i < UNITY_INT_WIDTH; i++)
    {
        if (current_bit & mask)
        {
            if (current_bit & number)
            {
                FUNC0('1');
            }
            else
            {
                FUNC0('0');
            }
        }
        else
        {
            FUNC0('X');
        }
        current_bit = current_bit >> 1;
    }
}