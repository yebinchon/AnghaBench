#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  errbuf; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_GETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

int
FUNC2(pcap_t *p)
{
	int fdflags;

	fdflags = FUNC0(p->fd, F_GETFL, 0);
	if (fdflags == -1) {
		FUNC1(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "F_GETFL");
		return (-1);
	}
	if (fdflags & O_NONBLOCK)
		return (1);
	else
		return (0);
}