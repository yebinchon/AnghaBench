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
typedef  int /*<<< orphan*/  u_char ;
struct pcap_pkthdr {int dummy; } ;

/* Variables and functions */
#define  DLT_LINUX_SLL 131 
#define  DLT_NFLOG 130 
#define  DLT_USB_LINUX 129 
#define  DLT_USB_LINUX_MMAPPED 128 
 int /*<<< orphan*/  FUNC0 (struct pcap_pkthdr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pcap_pkthdr*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pcap_pkthdr*,int /*<<< orphan*/ *) ; 

void
FUNC3(int linktype, struct pcap_pkthdr *hdr, u_char *data)
{
	/*
	 * Convert pseudo-headers from the byte order of
	 * the host on which the file was saved to our
	 * byte order, as necessary.
	 */
	switch (linktype) {

	case DLT_LINUX_SLL:
		FUNC0(hdr, data);
		break;

	case DLT_USB_LINUX:
		FUNC1(hdr, data, 0);
		break;

	case DLT_USB_LINUX_MMAPPED:
		FUNC1(hdr, data, 1);
		break;

	case DLT_NFLOG:
		FUNC2(hdr, data);
		break;
	}
}