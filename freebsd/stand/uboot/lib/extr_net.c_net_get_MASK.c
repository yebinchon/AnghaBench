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
typedef  int time_t ;
struct uboot_softc {int /*<<< orphan*/  sc_rxbuf; int /*<<< orphan*/  sc_handle; } ;
struct netif {struct uboot_softc* nif_devdata; } ;
struct iodesc {struct netif* io_netif; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ETHER_ALIGN ; 
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct iodesc *desc, void **pkt, time_t timeout)
{
	struct netif *nif = desc->io_netif;
	struct uboot_softc *sc = nif->nif_devdata;
	time_t t;
	int err, rlen;
	size_t len;
	char *buf;

#if defined(NETIF_DEBUG)
	printf("net_get: pkt %p, timeout %d\n", pkt, timeout);
#endif
	t = FUNC0();
	len = sizeof(sc->sc_rxbuf);
	do {
		err = FUNC4(sc->sc_handle, sc->sc_rxbuf, len, &rlen);

		if (err != 0) {
			FUNC3("net_get: ub_dev_recv() failed, error=%d\n",
			    err);
			rlen = 0;
			break;
		}
	} while ((rlen == -1 || rlen == 0) && (FUNC0() - t < timeout));

#if defined(NETIF_DEBUG)
	printf("net_get: received len %d (%x)\n", rlen, rlen);
#endif

	if (rlen > 0) {
		buf = FUNC1(rlen + ETHER_ALIGN);
		if (buf == NULL)
			return (-1);
		FUNC2(buf + ETHER_ALIGN, sc->sc_rxbuf, rlen);
		*pkt = buf;
		return ((ssize_t)rlen);
	}

	return (-1);
}