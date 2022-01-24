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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct pcap_pkthdr {int /*<<< orphan*/  caplen; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

u_int
FUNC3(netdissect_options *ndo,
             const struct pcap_pkthdr *h, register const u_char *p)
{
	register u_int length = h->len;
	register u_int caplen = h->caplen;

        FUNC1(*p, 2); /* minimum frame header length */

        if ((length = FUNC2(ndo, p, length)) == 0)
            return (0);
        else
            return length;
 trunc:
        FUNC0((ndo, "[|mfr]"));
        return caplen;
}