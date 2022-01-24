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
typedef  int u_int32 ;

/* Variables and functions */
 int INT_BCASTOPEN ; 
 int INT_BCASTXMIT ; 
 int INT_BROADCAST ; 
 int INT_LOOPBACK ; 
 int INT_MCASTIF ; 
 int INT_MCASTOPEN ; 
 int INT_MULTICAST ; 
 int INT_PPP ; 
 int INT_PRIVACY ; 
 int INT_UP ; 
 int INT_WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

char *
FUNC2(u_int32 iflags)
{
	static char ifs[1024];

	ifs[0] = '\0';

	if (iflags & INT_UP) {
		iflags &= ~INT_UP;
		FUNC0(ifs, sizeof ifs, "up");
	}

	if (iflags & INT_PPP) {
		iflags &= ~INT_PPP;
		FUNC0(ifs, sizeof ifs, "ppp");
	}

	if (iflags & INT_LOOPBACK) {
		iflags &= ~INT_LOOPBACK;
		FUNC0(ifs, sizeof ifs, "loopback");
	}

	if (iflags & INT_BROADCAST) {
		iflags &= ~INT_BROADCAST;
		FUNC0(ifs, sizeof ifs, "broadcast");
	}

	if (iflags & INT_MULTICAST) {
		iflags &= ~INT_MULTICAST;
		FUNC0(ifs, sizeof ifs, "multicast");
	}

	if (iflags & INT_BCASTOPEN) {
		iflags &= ~INT_BCASTOPEN;
		FUNC0(ifs, sizeof ifs, "bcastopen");
	}

	if (iflags & INT_MCASTOPEN) {
		iflags &= ~INT_MCASTOPEN;
		FUNC0(ifs, sizeof ifs, "mcastopen");
	}

	if (iflags & INT_WILDCARD) {
		iflags &= ~INT_WILDCARD;
		FUNC0(ifs, sizeof ifs, "wildcard");
	}

	if (iflags & INT_MCASTIF) {
		iflags &= ~INT_MCASTIF;
		FUNC0(ifs, sizeof ifs, "MCASTif");
	}

	if (iflags & INT_PRIVACY) {
		iflags &= ~INT_PRIVACY;
		FUNC0(ifs, sizeof ifs, "IPv6privacy");
	}

	if (iflags & INT_BCASTXMIT) {
		iflags &= ~INT_BCASTXMIT;
		FUNC0(ifs, sizeof ifs, "bcastxmit");
	}

	if (iflags) {
		char string[10];

		FUNC1(string, sizeof string, "%0x", iflags);
		FUNC0(ifs, sizeof ifs, string);
	}

	return ifs;
}