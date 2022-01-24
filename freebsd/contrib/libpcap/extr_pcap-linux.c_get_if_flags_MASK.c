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
struct ifreq {scalar_t__ ifr_data; int /*<<< orphan*/  ifr_name; } ;
struct ethtool_value {scalar_t__ data; int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  scalar_t__ caddr_t ;
typedef  int bpf_u_int32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
#define  ARPHRD_6LOWPAN 138 
#define  ARPHRD_IEEE80211 137 
#define  ARPHRD_IEEE80211_PRISM 136 
#define  ARPHRD_IEEE80211_RADIOTAP 135 
#define  ARPHRD_IEEE802154 134 
#define  ARPHRD_IEEE802154_MONITOR 133 
#define  ARPHRD_IRDA 132 
#define  ARPHRD_LOOPBACK 131 
#define  EINVAL 130 
#define  ENODEV 129 
#define  EOPNOTSUPP 128 
 int /*<<< orphan*/  ETHTOOL_GLINK ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int PCAP_IF_CONNECTION_STATUS_CONNECTED ; 
 int PCAP_IF_CONNECTION_STATUS_DISCONNECTED ; 
 int PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE ; 
 int PCAP_IF_LOOPBACK ; 
 int PCAP_IF_WIRELESS ; 
 int /*<<< orphan*/  SIOCETHTOOL ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,unsigned int*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 scalar_t__ FUNC7 (int,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC13(const char *name, bpf_u_int32 *flags, char *errbuf)
{
	int sock;
	FILE *fh;
	unsigned int arptype;
	struct ifreq ifr;
	struct ethtool_value info;

	if (*flags & PCAP_IF_LOOPBACK) {
		/*
		 * Loopback devices aren't wireless, and "connected"/
		 * "disconnected" doesn't apply to them.
		 */
		*flags |= PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE;
		return 0;
	}

	sock = FUNC11(AF_INET, SOCK_DGRAM, 0);
	if (sock == -1) {
		FUNC9(errbuf, PCAP_ERRBUF_SIZE, errno,
		    "Can't create socket to get ethtool information for %s",
		    name);
		return -1;
	}

	/*
	 * OK, what type of network is this?
	 * In particular, is it wired or wireless?
	 */
	if (FUNC7(sock, name)) {
		/*
		 * Wi-Fi, hence wireless.
		 */
		*flags |= PCAP_IF_WIRELESS;
	} else {
		/*
		 * OK, what does /sys/class/net/{if}/type contain?
		 * (We don't use that for Wi-Fi, as it'll report
		 * "Ethernet", i.e. ARPHRD_ETHER, for non-monitor-
		 * mode devices.)
		 */
		char *pathstr;

		if (FUNC0(&pathstr, "/sys/class/net/%s/type", name) == -1) {
			FUNC10(errbuf, PCAP_ERRBUF_SIZE,
			    "%s: Can't generate path name string for /sys/class/net device",
			    name);
			FUNC1(sock);
			return -1;
		}
		fh = FUNC3(pathstr, "r");
		if (fh != NULL) {
			if (FUNC5(fh, "%u", &arptype) == 1) {
				/*
				 * OK, we got an ARPHRD_ type; what is it?
				 */
				switch (arptype) {

#ifdef ARPHRD_LOOPBACK
				case ARPHRD_LOOPBACK:
					/*
					 * These are types to which
					 * "connected" and "disconnected"
					 * don't apply, so don't bother
					 * asking about it.
					 *
					 * XXX - add other types?
					 */
					FUNC1(sock);
					FUNC2(fh);
					FUNC4(pathstr);
					return 0;
#endif

				case ARPHRD_IRDA:
				case ARPHRD_IEEE80211:
				case ARPHRD_IEEE80211_PRISM:
				case ARPHRD_IEEE80211_RADIOTAP:
#ifdef ARPHRD_IEEE802154
				case ARPHRD_IEEE802154:
#endif
#ifdef ARPHRD_IEEE802154_MONITOR
				case ARPHRD_IEEE802154_MONITOR:
#endif
#ifdef ARPHRD_6LOWPAN
				case ARPHRD_6LOWPAN:
#endif
					/*
					 * Various wireless types.
					 */
					*flags |= PCAP_IF_WIRELESS;
					break;
				}
			}
			FUNC2(fh);
			FUNC4(pathstr);
		}
	}

#ifdef ETHTOOL_GLINK
	memset(&ifr, 0, sizeof(ifr));
	strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
	info.cmd = ETHTOOL_GLINK;
	ifr.ifr_data = (caddr_t)&info;
	if (ioctl(sock, SIOCETHTOOL, &ifr) == -1) {
		int save_errno = errno;

		switch (save_errno) {

		case EOPNOTSUPP:
		case EINVAL:
			/*
			 * OK, this OS version or driver doesn't support
			 * asking for this information.
			 * XXX - distinguish between "this doesn't
			 * support ethtool at all because it's not
			 * that type of device" vs. "this doesn't
			 * support ethtool even though it's that
			 * type of device", and return "unknown".
			 */
			*flags |= PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE;
			close(sock);
			return 0;

		case ENODEV:
			/*
			 * OK, no such device.
			 * The user will find that out when they try to
			 * activate the device; just say "OK" and
			 * don't set anything.
			 */
			close(sock);
			return 0;

		default:
			/*
			 * Other error.
			 */
			pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
			    save_errno,
			    "%s: SIOCETHTOOL(ETHTOOL_GLINK) ioctl failed",
			    name);
			close(sock);
			return -1;
		}
	}

	/*
	 * Is it connected?
	 */
	if (info.data) {
		/*
		 * It's connected.
		 */
		*flags |= PCAP_IF_CONNECTION_STATUS_CONNECTED;
	} else {
		/*
		 * It's disconnected.
		 */
		*flags |= PCAP_IF_CONNECTION_STATUS_DISCONNECTED;
	}
#endif

	FUNC1(sock);
	return 0;
}