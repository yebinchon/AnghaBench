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
 int /*<<< orphan*/  can_be_bound ; 
 int /*<<< orphan*/  get_if_flags ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(pcap_if_list_t *devlistp, char *errbuf)
{
	return (FUNC0(devlistp, errbuf, can_be_bound,
	    get_if_flags));
}