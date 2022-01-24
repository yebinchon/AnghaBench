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
struct TYPE_4__ {int (* setdirection_op ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  errbuf; } ;
typedef  TYPE_1__ pcap_t ;
typedef  int /*<<< orphan*/  pcap_direction_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC2(pcap_t *p, pcap_direction_t d)
{
	if (p->setdirection_op == NULL) {
		FUNC0(p->errbuf, PCAP_ERRBUF_SIZE,
		    "Setting direction is not implemented on this platform");
		return (-1);
	} else
		return (p->setdirection_op(p, d));
}