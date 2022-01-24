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

/* Variables and functions */
 int ABANDONED ; 
 int ALIAS ; 
 int ALLOW ; 
 int ALWAYS_REPLY_RFC1048 ; 
 int APPEND ; 
 int AUTHORITATIVE ; 
 int BACKOFF_CUTOFF ; 
 int BOOTING ; 
 int BOOTP ; 
 int BOOT_UNKNOWN_CLIENTS ; 
 int CIADDR ; 
 int CLASS ; 
 int CLIENT_HOSTNAME ; 
 int CLIENT_IDENTIFIER ; 
 int DEFAULT ; 
 int DEFAULT_LEASE_TIME ; 
 int DENY ; 
 int DOMAIN ; 
 int DYNAMIC_BOOTP ; 
 int DYNAMIC_BOOTP_LEASE_CUTOFF ; 
 int DYNAMIC_BOOTP_LEASE_LENGTH ; 
 int ENDS ; 
 int ETHERNET ; 
 int EXPIRE ; 
 int FDDI ; 
 int FILENAME ; 
 int FIXED_ADDR ; 
 int GET_LEASE_HOSTNAMES ; 
 int GIADDR ; 
 int GROUP ; 
 int HARDWARE ; 
 int HOST ; 
 int HOSTNAME ; 
 int INITIAL_INTERVAL ; 
 int INTERFACE ; 
 int LEASE ; 
 int MAX_LEASE_TIME ; 
 int MEDIA ; 
 int MEDIUM ; 
 int NAMESERVER ; 
 int NETMASK ; 
 int NEXT_SERVER ; 
 int ONE_LEASE_PER_CLIENT ; 
 int OPTION ; 
 int PACKET ; 
 int PREPEND ; 
 int RANGE ; 
 int REBIND ; 
 int REBOOT ; 
 int REJECT ; 
 int RENEW ; 
 int REQUEST ; 
 int REQUIRE ; 
 int RETRY ; 
 int SCRIPT ; 
 int SEARCH ; 
 int SELECT_TIMEOUT ; 
 int SEND ; 
 int SERVER_IDENTIFIER ; 
 int SERVER_NAME ; 
 int SHARED_NETWORK ; 
 int SIADDR ; 
 int STARTS ; 
 int SUBNET ; 
 int SUPERSEDE ; 
 int TIMEOUT ; 
 int TIMESTAMP ; 
 int TOKEN_NOT ; 
 int TOKEN_RING ; 
 int UID ; 
 int UNKNOWN_CLIENTS ; 
 int USER_CLASS ; 
 int USE_HOST_DECL_NAMES ; 
 int USE_LEASE_ADDR_FOR_DEFAULT_ROUTE ; 
 int VENDOR_CLASS ; 
 int YIADDR ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char) ; 

__attribute__((used)) static int
FUNC4(char *atom, int dfv)
{
	if (!FUNC0(atom[0]))
		return (dfv);

	switch (FUNC3(atom[0])) {
	case 'a':
		if (!FUNC1(atom + 1, "lways-reply-rfc1048"))
			return (ALWAYS_REPLY_RFC1048);
		if (!FUNC1(atom + 1, "ppend"))
			return (APPEND);
		if (!FUNC1(atom + 1, "llow"))
			return (ALLOW);
		if (!FUNC1(atom + 1, "lias"))
			return (ALIAS);
		if (!FUNC1(atom + 1, "bandoned"))
			return (ABANDONED);
		if (!FUNC1(atom + 1, "uthoritative"))
			return (AUTHORITATIVE);
		break;
	case 'b':
		if (!FUNC1(atom + 1, "ackoff-cutoff"))
			return (BACKOFF_CUTOFF);
		if (!FUNC1(atom + 1, "ootp"))
			return (BOOTP);
		if (!FUNC1(atom + 1, "ooting"))
			return (BOOTING);
		if (!FUNC1(atom + 1, "oot-unknown-clients"))
			return (BOOT_UNKNOWN_CLIENTS);
		break;
	case 'c':
		if (!FUNC1(atom + 1, "lass"))
			return (CLASS);
		if (!FUNC1(atom + 1, "iaddr"))
			return (CIADDR);
		if (!FUNC1(atom + 1, "lient-identifier"))
			return (CLIENT_IDENTIFIER);
		if (!FUNC1(atom + 1, "lient-hostname"))
			return (CLIENT_HOSTNAME);
		break;
	case 'd':
		if (!FUNC1(atom + 1, "omain"))
			return (DOMAIN);
		if (!FUNC1(atom + 1, "eny"))
			return (DENY);
		if (!FUNC2(atom + 1, "efault", 6)) {
			if (!atom[7])
				return (DEFAULT);
			if (!FUNC1(atom + 7, "-lease-time"))
				return (DEFAULT_LEASE_TIME);
			break;
		}
		if (!FUNC2(atom + 1, "ynamic-bootp", 12)) {
			if (!atom[13])
				return (DYNAMIC_BOOTP);
			if (!FUNC1(atom + 13, "-lease-cutoff"))
				return (DYNAMIC_BOOTP_LEASE_CUTOFF);
			if (!FUNC1(atom + 13, "-lease-length"))
				return (DYNAMIC_BOOTP_LEASE_LENGTH);
			break;
		}
		break;
	case 'e':
		if (!FUNC1(atom + 1, "thernet"))
			return (ETHERNET);
		if (!FUNC1(atom + 1, "nds"))
			return (ENDS);
		if (!FUNC1(atom + 1, "xpire"))
			return (EXPIRE);
		break;
	case 'f':
		if (!FUNC1(atom + 1, "ilename"))
			return (FILENAME);
		if (!FUNC1(atom + 1, "ixed-address"))
			return (FIXED_ADDR);
		if (!FUNC1(atom + 1, "ddi"))
			return (FDDI);
		break;
	case 'g':
		if (!FUNC1(atom + 1, "iaddr"))
			return (GIADDR);
		if (!FUNC1(atom + 1, "roup"))
			return (GROUP);
		if (!FUNC1(atom + 1, "et-lease-hostnames"))
			return (GET_LEASE_HOSTNAMES);
		break;
	case 'h':
		if (!FUNC1(atom + 1, "ost"))
			return (HOST);
		if (!FUNC1(atom + 1, "ardware"))
			return (HARDWARE);
		if (!FUNC1(atom + 1, "ostname"))
			return (HOSTNAME);
		break;
	case 'i':
		if (!FUNC1(atom + 1, "nitial-interval"))
			return (INITIAL_INTERVAL);
		if (!FUNC1(atom + 1, "nterface"))
			return (INTERFACE);
		break;
	case 'l':
		if (!FUNC1(atom + 1, "ease"))
			return (LEASE);
		break;
	case 'm':
		if (!FUNC1(atom + 1, "ax-lease-time"))
			return (MAX_LEASE_TIME);
		if (!FUNC2(atom + 1, "edi", 3)) {
			if (!FUNC1(atom + 4, "a"))
				return (MEDIA);
			if (!FUNC1(atom + 4, "um"))
				return (MEDIUM);
			break;
		}
		break;
	case 'n':
		if (!FUNC1(atom + 1, "ameserver"))
			return (NAMESERVER);
		if (!FUNC1(atom + 1, "etmask"))
			return (NETMASK);
		if (!FUNC1(atom + 1, "ext-server"))
			return (NEXT_SERVER);
		if (!FUNC1(atom + 1, "ot"))
			return (TOKEN_NOT);
		break;
	case 'o':
		if (!FUNC1(atom + 1, "ption"))
			return (OPTION);
		if (!FUNC1(atom + 1, "ne-lease-per-client"))
			return (ONE_LEASE_PER_CLIENT);
		break;
	case 'p':
		if (!FUNC1(atom + 1, "repend"))
			return (PREPEND);
		if (!FUNC1(atom + 1, "acket"))
			return (PACKET);
		break;
	case 'r':
		if (!FUNC1(atom + 1, "ange"))
			return (RANGE);
		if (!FUNC1(atom + 1, "equest"))
			return (REQUEST);
		if (!FUNC1(atom + 1, "equire"))
			return (REQUIRE);
		if (!FUNC1(atom + 1, "etry"))
			return (RETRY);
		if (!FUNC1(atom + 1, "enew"))
			return (RENEW);
		if (!FUNC1(atom + 1, "ebind"))
			return (REBIND);
		if (!FUNC1(atom + 1, "eboot"))
			return (REBOOT);
		if (!FUNC1(atom + 1, "eject"))
			return (REJECT);
		break;
	case 's':
		if (!FUNC1(atom + 1, "earch"))
			return (SEARCH);
		if (!FUNC1(atom + 1, "tarts"))
			return (STARTS);
		if (!FUNC1(atom + 1, "iaddr"))
			return (SIADDR);
		if (!FUNC1(atom + 1, "ubnet"))
			return (SUBNET);
		if (!FUNC1(atom + 1, "hared-network"))
			return (SHARED_NETWORK);
		if (!FUNC1(atom + 1, "erver-name"))
			return (SERVER_NAME);
		if (!FUNC1(atom + 1, "erver-identifier"))
			return (SERVER_IDENTIFIER);
		if (!FUNC1(atom + 1, "elect-timeout"))
			return (SELECT_TIMEOUT);
		if (!FUNC1(atom + 1, "end"))
			return (SEND);
		if (!FUNC1(atom + 1, "cript"))
			return (SCRIPT);
		if (!FUNC1(atom + 1, "upersede"))
			return (SUPERSEDE);
		break;
	case 't':
		if (!FUNC1(atom + 1, "imestamp"))
			return (TIMESTAMP);
		if (!FUNC1(atom + 1, "imeout"))
			return (TIMEOUT);
		if (!FUNC1(atom + 1, "oken-ring"))
			return (TOKEN_RING);
		break;
	case 'u':
		if (!FUNC2(atom + 1, "se", 2)) {
			if (!FUNC1(atom + 3, "r-class"))
				return (USER_CLASS);
			if (!FUNC1(atom + 3, "-host-decl-names"))
				return (USE_HOST_DECL_NAMES);
			if (!FUNC1(atom + 3,
					 "-lease-addr-for-default-route"))
				return (USE_LEASE_ADDR_FOR_DEFAULT_ROUTE);
			break;
		}
		if (!FUNC1(atom + 1, "id"))
			return (UID);
		if (!FUNC1(atom + 1, "nknown-clients"))
			return (UNKNOWN_CLIENTS);
		break;
	case 'v':
		if (!FUNC1(atom + 1, "endor-class"))
			return (VENDOR_CLASS);
		break;
	case 'y':
		if (!FUNC1(atom + 1, "iaddr"))
			return (YIADDR);
		break;
	}
	return (dfv);
}