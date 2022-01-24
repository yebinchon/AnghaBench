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
struct ifreq {int ifr_mtu; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 int BIGGER_THAN_ALL_MTUS ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  SIOCGIFMTU ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC4(int fd, const char *device, char *ebuf)
{
	struct ifreq	ifr;

	if (!device)
		return BIGGER_THAN_ALL_MTUS;

	FUNC1(&ifr, 0, sizeof(ifr));
	FUNC3(ifr.ifr_name, device, sizeof(ifr.ifr_name));

	if (FUNC0(fd, SIOCGIFMTU, &ifr) == -1) {
		FUNC2(ebuf, PCAP_ERRBUF_SIZE,
		    errno, "SIOCGIFMTU");
		return -1;
	}

	return ifr.ifr_mtu;
}