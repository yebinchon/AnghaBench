#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* parent; } ;
typedef  TYPE_1__ WPACKET_SUB ;
struct TYPE_7__ {TYPE_1__* subs; } ;
typedef  TYPE_2__ WPACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC2(WPACKET *pkt)
{
    WPACKET_SUB *sub;

    if (!FUNC0(pkt->subs != NULL))
        return 0;

    for (sub = pkt->subs; sub != NULL; sub = sub->parent) {
        if (!FUNC1(pkt, sub, 0))
            return 0;
    }

    return 1;
}