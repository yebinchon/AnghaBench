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
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static int
FUNC2(pcap_t *p, const void *buf, size_t size)
{
	int ret;

	/*
	 * XXX - libnet overwrites the source address with what I
	 * presume is the interface's address; is that required?
	 */
	ret = FUNC1(p->fd, buf, size);
	if (ret == -1) {
		FUNC0(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "send");
		return (-1);
	}
	return (ret);
}