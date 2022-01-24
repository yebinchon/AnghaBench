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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int* FUNC1 (int /*<<< orphan*/ ) ; 
 int debug_indent ; 

__attribute__((used)) static void FUNC2(uint64_t buffer_address, int buffer_length)
{
    uint8_t *buffer = FUNC1(buffer_address);
    int offset = 0;
    while (offset < buffer_length)
    {
        int i;
        FUNC0("%*s%04x:",  2*debug_indent, "", offset);
        for (i=0; i<32; i++)
        {
            if ((i&3) == 0)
                FUNC0(" ");
            if (offset+i < buffer_length)
                FUNC0("%02x", 0xff & buffer[offset+i]);
            else
                FUNC0("  ");
        }
        FUNC0("\n");
        offset += 32;
    }
}