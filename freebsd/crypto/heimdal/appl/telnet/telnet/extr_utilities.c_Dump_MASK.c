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
 int BYTES_PER_LINE ; 
 scalar_t__ NetTrace ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,...) ; 
 int FUNC2 (int,int) ; 
 scalar_t__ prettydump ; 
 scalar_t__ stdout ; 

void
FUNC3(char direction, unsigned char *buffer, int length)
{
#   define BYTES_PER_LINE	32
    unsigned char *pThis;
    int offset;

    offset = 0;

    while (length) {
	/* print one line */
	FUNC1(NetTrace, "%c 0x%x\t", direction, offset);
	pThis = buffer;
	if (prettydump) {
	    buffer = buffer + FUNC2(length, BYTES_PER_LINE/2);
	    while (pThis < buffer) {
		FUNC1(NetTrace, "%c%.2x",
		    (((*pThis)&0xff) == 0xff) ? '*' : ' ',
		    (*pThis)&0xff);
		pThis++;
	    }
	    length -= BYTES_PER_LINE/2;
	    offset += BYTES_PER_LINE/2;
	} else {
	    buffer = buffer + FUNC2(length, BYTES_PER_LINE);
	    while (pThis < buffer) {
		FUNC1(NetTrace, "%.2x", (*pThis)&0xff);
		pThis++;
	    }
	    length -= BYTES_PER_LINE;
	    offset += BYTES_PER_LINE;
	}
	if (NetTrace == stdout) {
	    FUNC1(NetTrace, "\r\n");
	} else {
	    FUNC1(NetTrace, "\n");
	}
	if (length < 0) {
	    FUNC0(NetTrace);
	    return;
	}
	/* find next unique line */
    }
    FUNC0(NetTrace);
}