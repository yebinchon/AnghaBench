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
typedef  int /*<<< orphan*/  u_char ;
struct pcap_pkthdr {scalar_t__ len; scalar_t__ caplen; } ;
struct enchdr {int flags; int af; int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 scalar_t__ ENC_HDRLEN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_AUTH ; 
 int /*<<< orphan*/  M_CONF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 

u_int
FUNC5(netdissect_options *ndo,
             const struct pcap_pkthdr *h, register const u_char *p)
{
	register u_int length = h->len;
	register u_int caplen = h->caplen;
	int flags;
	const struct enchdr *hdr;

	if (caplen < ENC_HDRLEN) {
		FUNC2((ndo, "[|enc]"));
		goto out;
	}

	hdr = (const struct enchdr *)p;
	flags = hdr->flags;
	if (flags == 0)
		FUNC2((ndo, "(unprotected): "));
	else
		FUNC2((ndo, "("));
	FUNC0(flags, M_AUTH, "authentic");
	FUNC0(flags, M_CONF, "confidential");
	/* ENC_PRINT_TYPE(flags, M_TUNNEL, "tunnel"); */
	FUNC2((ndo, "SPI 0x%08x: ", FUNC1(&hdr->spi)));

	length -= ENC_HDRLEN;
	caplen -= ENC_HDRLEN;
	p += ENC_HDRLEN;

	switch (hdr->af) {
	case AF_INET:
		FUNC4(ndo, p, length);
		break;
#ifdef AF_INET6
	case AF_INET6:
		FUNC3(ndo, p, length);
		break;
#endif
	}

out:
	return (ENC_HDRLEN);
}