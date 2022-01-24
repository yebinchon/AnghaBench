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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static uint32_t FUNC4(uint32_t mrs_dat, char *addr_str)
{
    int count = 0;
    int amap [23];
    uint32_t new_mrs_dat = 0;

//    cvmx_dprintf("mrs_dat: 0x%x, str: %x\n", mrs_dat, addr_str);
    char *charptr = FUNC3(addr_str," ");
    while ((charptr != NULL) & (count <= 22))
    {
        amap[22-count] = FUNC0(charptr);         // Assign the AMAP Array
        charptr = FUNC3(NULL," ");             // Get Next char string (which represents next addr bit mapping)
        count++;
    }
    // Now do the bit swap of MRSDAT (based on address mapping)
    uint32_t mrsdat_bit;
    for (count=0;count<=22;count++)
    {
        mrsdat_bit = FUNC1(mrs_dat, count);
        new_mrs_dat = FUNC2(mrsdat_bit, amap[count], new_mrs_dat);
    }

    return new_mrs_dat;
}