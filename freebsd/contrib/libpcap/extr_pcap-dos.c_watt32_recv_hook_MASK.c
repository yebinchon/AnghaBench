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
struct pcap_pkthdr {int /*<<< orphan*/  caplen; } ;
struct ether_header {int /*<<< orphan*/  ether_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  etype ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxbuf ; 

__attribute__((used)) static void FUNC2 (u_char *dummy, const struct pcap_pkthdr *pcap,
                              const u_char *buf)
{
  /* Fix me: assumes Ethernet II only */
  struct ether_header *ep = (struct ether_header*) buf;

  FUNC1 (rxbuf, buf, pcap->caplen);
  etype = ep->ether_type;
  FUNC0 (dummy);
}