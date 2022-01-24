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
typedef  int uint32_t ;
struct pfsync_bus {int status; int /*<<< orphan*/  creatorid; int /*<<< orphan*/  endtime; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  PFSYNC_BUS_END 129 
#define  PFSYNC_BUS_START 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(netdissect_options *ndo, const void *bp)
{
	const struct pfsync_bus *b = bp;
	uint32_t endtime;
	int min, sec;
	const char *status;

	endtime = FUNC2(b->endtime);
	sec = endtime % 60;
	endtime /= 60;
	min = endtime % 60;
	endtime /= 60;

	switch (b->status) {
	case PFSYNC_BUS_START:
		status = "start";
		break;
	case PFSYNC_BUS_END:
		status = "end";
		break;
	default:
		status = "UNKNOWN";
		break;
	}

	FUNC0((ndo, "\n\tcreatorid: %08x age: %.2u:%.2u:%.2u status: %s",
	    FUNC1(b->creatorid), endtime, min, sec, status));
}