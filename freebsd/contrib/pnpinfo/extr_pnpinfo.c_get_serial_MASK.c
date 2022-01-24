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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int FUNC2 (int) ; 
 int rd_port ; 

int
FUNC3(u_char *data)
{
    int i, bit, valid = 0, sum = 0x6a;

    FUNC1(data, sizeof(char) * 9);

    for (i = 0; i < 72; i++) {
	bit = FUNC2((rd_port << 2) | 0x3) == 0x55;
	FUNC0(250);	/* Delay 250 usec */

	/* Can't Short Circuit the next evaluation, so 'and' is last */
	bit = (FUNC2((rd_port << 2) | 0x3) == 0xaa) && bit;
	FUNC0(250);	/* Delay 250 usec */

	valid = valid || bit;

	if (i < 64)
	    sum = (sum >> 1) |
		(((sum ^ (sum >> 1) ^ bit) << 7) & 0xff);

	data[i / 8] = (data[i / 8] >> 1) | (bit ? 0x80 : 0);
    }

    valid = valid && (data[8] == sum);

    return valid;
}