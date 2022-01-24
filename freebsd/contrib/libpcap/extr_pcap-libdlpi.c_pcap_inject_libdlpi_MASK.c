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
struct pcap_dlpi {int /*<<< orphan*/  dlpi_hd; } ;
struct TYPE_3__ {int /*<<< orphan*/  errbuf; struct pcap_dlpi* priv; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int DLPI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(pcap_t *p, const void *buf, size_t size)
{
	struct pcap_dlpi *pd = p->priv;
	int retv;

	retv = FUNC1(pd->dlpi_hd, NULL, 0, buf, size, NULL);
	if (retv != DLPI_SUCCESS) {
		FUNC2(FUNC0(pd->dlpi_hd), "dlpi_send", retv,
		    p->errbuf);
		return (-1);
	}
	/*
	 * dlpi_send(3DLPI) does not provide a way to return the number of
	 * bytes sent on the wire. Based on the fact that DLPI_SUCCESS was
	 * returned we are assuming 'size' bytes were sent.
	 */
	return (size);
}