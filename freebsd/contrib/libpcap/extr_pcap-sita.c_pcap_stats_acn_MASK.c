#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct pcap_stat {void* ps_ifdrop; void* ps_drop; void* ps_recv; } ;
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ pcap_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned char*) ; 

__attribute__((used)) static int FUNC3(pcap_t *handle, struct pcap_stat *ps) {
	unsigned char	buf[12];

	FUNC2(handle->fd, 1, (unsigned char *)"S");						/* send the get_stats command to the IOP */

	if (FUNC1(handle->fd, sizeof(buf), buf) == -1) return -1;	/* try reading the required bytes */

	ps->ps_recv		= FUNC0(*(uint32_t *)&buf[0]);							/* break the buffer into its three 32 bit components */
	ps->ps_drop		= FUNC0(*(uint32_t *)&buf[4]);
	ps->ps_ifdrop	= FUNC0(*(uint32_t *)&buf[8]);

	return 0;
}