#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* subs; } ;
typedef  TYPE_1__ WPACKET ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_3__*,int) ; 

int FUNC2(WPACKET *pkt)
{
    int ret;

    /*
     * Internal API, so should not fail - but we do negative testing of this
     * so no assert (otherwise the tests fail)
     */
    if (pkt->subs == NULL || pkt->subs->parent != NULL)
        return 0;

    ret = FUNC1(pkt, pkt->subs, 1);
    if (ret) {
        FUNC0(pkt->subs);
        pkt->subs = NULL;
    }

    return ret;
}