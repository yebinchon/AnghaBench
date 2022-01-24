#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned char* staticbuf; size_t maxsize; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ WPACKET ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,size_t) ; 

int FUNC3(WPACKET *pkt, unsigned char *buf, size_t len,
                            size_t lenbytes)
{
    size_t max = FUNC0(lenbytes);

    /* Internal API, so should not fail */
    if (!FUNC1(buf != NULL && len > 0))
        return 0;

    pkt->staticbuf = buf;
    pkt->buf = NULL;
    pkt->maxsize = (max < len) ? max : len;

    return FUNC2(pkt, lenbytes);
}