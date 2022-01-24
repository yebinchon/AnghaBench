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
typedef  int /*<<< orphan*/  pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_TSTAMP_PRECISION_MICRO ; 
 int /*<<< orphan*/ * FUNC0 (char const*,int /*<<< orphan*/ ,char*) ; 

pcap_t *
FUNC1(const char *fname, char *errbuf)
{
	return (FUNC0(fname,
	    PCAP_TSTAMP_PRECISION_MICRO, errbuf));
}