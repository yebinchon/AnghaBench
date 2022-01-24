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
typedef  void* uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (void**) ; 

void * FUNC1(void* pDst, uint8_t val, uint32_t size)
{
    uint32_t val32;
    uint32_t *p_Dst32;
    uint8_t  *p_Dst8;

    p_Dst8 = (uint8_t*)(pDst);

    /* generate four 8-bit val's in 32-bit container */
    val32  = (uint32_t) val;
    val32 |= (val32 <<  8);
    val32 |= (val32 << 16);

    /* align destination to 32 */
    while((FUNC0(p_Dst8) & 3) && size) /* (pDst mod 4) > 0 and size > 0 */
    {
        *p_Dst8++ = val;
        size--;
    }

    /* 32-bit chunks */
    p_Dst32 = (uint32_t*)(p_Dst8);
    while (size >> 2) /* size >= 4 */
    {
        *p_Dst32++ = val32;
        size -= 4;
    }

    /* complete the leftovers */
    p_Dst8 = (uint8_t*)(p_Dst32);
    while (size--)
        *p_Dst8++ = val;

    return pDst;
}