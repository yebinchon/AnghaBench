#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcap_win {int nonblock; int /*<<< orphan*/  adapter; } ;
struct TYPE_4__ {int timeout; } ;
struct TYPE_5__ {int /*<<< orphan*/  errbuf; TYPE_1__ opt; struct pcap_win* priv; } ;
typedef  TYPE_2__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(pcap_t *p, int nonblock)
{
	struct pcap_win *pw = p->priv;
	int newtimeout;
	char win_errbuf[PCAP_ERRBUF_SIZE+1];

	if (nonblock) {
		/*
		 * Set the packet buffer timeout to -1 for non-blocking
		 * mode.
		 */
		newtimeout = -1;
	} else {
		/*
		 * Restore the timeout set when the device was opened.
		 * (Note that this may be -1, in which case we're not
		 * really leaving non-blocking mode.  However, although
		 * the timeout argument to pcap_set_timeout() and
		 * pcap_open_live() is an int, you're not supposed to
		 * supply a negative value, so that "shouldn't happen".)
		 */
		newtimeout = p->opt.timeout;
	}
	if (!FUNC1(pw->adapter, newtimeout)) {
		FUNC3(FUNC0(), win_errbuf);
		FUNC2(p->errbuf, PCAP_ERRBUF_SIZE,
		    "PacketSetReadTimeout: %s", win_errbuf);
		return (-1);
	}
	pw->nonblock = (newtimeout == -1);
	return (0);
}