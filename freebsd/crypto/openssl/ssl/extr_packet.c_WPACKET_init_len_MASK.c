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
struct TYPE_4__ {int /*<<< orphan*/  maxsize; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * staticbuf; } ;
typedef  TYPE_1__ WPACKET ;
typedef  int /*<<< orphan*/  BUF_MEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,size_t) ; 

int FUNC3(WPACKET *pkt, BUF_MEM *buf, size_t lenbytes)
{
    /* Internal API, so should not fail */
    if (!FUNC1(buf != NULL))
        return 0;

    pkt->staticbuf = NULL;
    pkt->buf = buf;
    pkt->maxsize = FUNC0(lenbytes);

    return FUNC2(pkt, lenbytes);
}