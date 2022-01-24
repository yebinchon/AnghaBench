#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int sa_family; } ;
struct ifreq {TYPE_1__ ifr_hwaddr; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 scalar_t__ ENODEV ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int PCAP_ERROR ; 
 int PCAP_ERROR_NO_SUCH_DEVICE ; 
 int /*<<< orphan*/  SIOCGIFHWADDR ; 
 scalar_t__ errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC4(int fd, const char *device, char *ebuf)
{
	struct ifreq	ifr;

	FUNC1(&ifr, 0, sizeof(ifr));
	FUNC3(ifr.ifr_name, device, sizeof(ifr.ifr_name));

	if (FUNC0(fd, SIOCGIFHWADDR, &ifr) == -1) {
		FUNC2(ebuf, PCAP_ERRBUF_SIZE,
		    errno, "SIOCGIFHWADDR");
		if (errno == ENODEV) {
			/*
			 * No such device.
			 */
			return PCAP_ERROR_NO_SUCH_DEVICE;
		}
		return PCAP_ERROR;
	}

	return ifr.ifr_hwaddr.sa_family;
}