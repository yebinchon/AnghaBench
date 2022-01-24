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
typedef  scalar_t__ u_int ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 long INT_MAX ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC1 (char*) ; 
 long FUNC2 (char*,char**,int) ; 

__attribute__((used)) static char *
FUNC3(char *device, u_int *unitp, char *ebuf)
{
	char *cp;
	char *eos;
	long unit;

	/*
	 * Look for a number at the end of the device name string.
	 */
	cp = device + FUNC1(device) - 1;
	if (*cp < '0' || *cp > '9') {
		FUNC0(ebuf, PCAP_ERRBUF_SIZE, "%s missing unit number",
		    device);
		return (NULL);
	}

	/* Digits at end of string are unit number */
	while (cp-1 >= device && *(cp-1) >= '0' && *(cp-1) <= '9')
		cp--;

	errno = 0;
	unit = FUNC2(cp, &eos, 10);
	if (*eos != '\0') {
		FUNC0(ebuf, PCAP_ERRBUF_SIZE, "%s bad unit number", device);
		return (NULL);
	}
	if (errno == ERANGE || unit > INT_MAX) {
		FUNC0(ebuf, PCAP_ERRBUF_SIZE, "%s unit number too large",
		    device);
		return (NULL);
	}
	if (unit < 0) {
		FUNC0(ebuf, PCAP_ERRBUF_SIZE, "%s unit number is negative",
		    device);
		return (NULL);
	}
	*unitp = (u_int)unit;
	return (cp);
}