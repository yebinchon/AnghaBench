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
 char* FUNC0 () ; 
 char* FUNC1 (size_t) ; 
 char const* pcap_lib_version_string ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pcap_version_string_packet_dll_fmt ; 
 int FUNC3 (char*) ; 

const char *
FUNC4(void)
{
	char *packet_version_string;
	size_t full_pcap_version_string_len;
	char *full_pcap_version_string;

	if (pcap_lib_version_string == NULL) {
		/*
		 * Generate the version string.  Report the packet.dll
		 * version.
		 *
		 * The -2 is for the %s in the format string, which will
		 * be replaced by packet_version_string.
		 */
		packet_version_string = FUNC0();
		full_pcap_version_string_len =
		    (sizeof pcap_version_string_packet_dll_fmt - 2) +
		    FUNC3(packet_version_string);
		full_pcap_version_string = FUNC1(full_pcap_version_string_len);
		if (full_pcap_version_string == NULL)
			return (NULL);
		FUNC2(full_pcap_version_string,
		    full_pcap_version_string_len,
		    pcap_version_string_packet_dll_fmt,
		    packet_version_string);
		pcap_lib_version_string = full_pcap_version_string;
	}
	return (pcap_lib_version_string);
}