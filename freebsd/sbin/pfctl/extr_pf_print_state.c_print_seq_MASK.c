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
struct pfsync_state_peer {scalar_t__ seqlo; scalar_t__ seqhi; scalar_t__ seqdiff; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 

void
FUNC2(struct pfsync_state_peer *p)
{
	if (p->seqdiff)
		FUNC1("[%u + %u](+%u)", FUNC0(p->seqlo),
		    FUNC0(p->seqhi) - FUNC0(p->seqlo), FUNC0(p->seqdiff));
	else
		FUNC1("[%u + %u]", FUNC0(p->seqlo),
		    FUNC0(p->seqhi) - FUNC0(p->seqlo));
}