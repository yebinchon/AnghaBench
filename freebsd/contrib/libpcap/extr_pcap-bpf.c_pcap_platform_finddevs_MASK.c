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
typedef  int /*<<< orphan*/  pcap_if_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  check_bpf_bindable ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  get_if_flags ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(pcap_if_list_t *devlistp, char *errbuf)
{
	/*
	 * Get the list of regular interfaces first.
	 */
	if (FUNC1(devlistp, errbuf, check_bpf_bindable,
	    get_if_flags) == -1)
		return (-1);	/* failure */

#if defined(__FreeBSD__) && defined(SIOCIFCREATE2)
	if (finddevs_usb(devlistp, errbuf) == -1)
		return (-1);
#endif

	return (0);
}