#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int oldstyle; int /*<<< orphan*/  errbuf; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_BUF_SIZE ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int PCAP_ERROR ; 
 int PCAP_ERROR_NO_SUCH_DEVICE ; 
 int PCAP_ERROR_PERM_DENIED ; 
 int PCAP_ERROR_PROMISC_PERM_DENIED ; 
 int /*<<< orphan*/  PCAP_OPENFLAG_PROMISCUOUS ; 
 int PCAP_SRC_FILE ; 
 int PCAP_SRC_IFLOCAL ; 
 int PCAP_SRC_IFREMOTE ; 
 char const* PCAP_SRC_IF_STRING ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (char const*,char*) ; 
 TYPE_1__* FUNC3 (char const*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (char const*,int*,char*,char*,char*,char*) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*,char const*,int) ; 

pcap_t *
FUNC12(const char *device, int snaplen, int promisc, int to_ms, char *errbuf)
{
	pcap_t *p;
	int status;
#ifdef ENABLE_REMOTE
	char host[PCAP_BUF_SIZE + 1];
	char port[PCAP_BUF_SIZE + 1];
	char name[PCAP_BUF_SIZE + 1];
	int srctype;

	/*
	 * Retrofit - we have to make older applications compatible with
	 * remote capture.
	 * So we're calling pcap_open_remote() from here; this is a very
	 * dirty hack.
	 * Obviously, we cannot exploit all the new features; for instance,
	 * we cannot send authentication, we cannot use a UDP data connection,
	 * and so on.
	 */
	if (pcap_parsesrcstr(device, &srctype, host, port, name, errbuf))
		return (NULL);

	if (srctype == PCAP_SRC_IFREMOTE) {
		/*
		 * Although we already have host, port and iface, we prefer
		 * to pass only 'device' to pcap_open_rpcap(), so that it has
		 * to call pcap_parsesrcstr() again.
		 * This is less optimized, but much clearer.
		 */
		return (pcap_open_rpcap(device, snaplen,
		    promisc ? PCAP_OPENFLAG_PROMISCUOUS : 0, to_ms,
		    NULL, errbuf));
	}
	if (srctype == PCAP_SRC_FILE) {
		pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "unknown URL scheme \"file\"");
		return (NULL);
	}
	if (srctype == PCAP_SRC_IFLOCAL) {
		/*
		 * If it starts with rpcap://, that refers to a local device
		 * (no host part in the URL). Remove the rpcap://, and
		 * fall through to the regular open path.
		 */
		if (strncmp(device, PCAP_SRC_IF_STRING, strlen(PCAP_SRC_IF_STRING)) == 0) {
			size_t len = strlen(device) - strlen(PCAP_SRC_IF_STRING) + 1;

			if (len > 0)
				device += strlen(PCAP_SRC_IF_STRING);
		}
	}
#endif	/* ENABLE_REMOTE */

	p = FUNC2(device, errbuf);
	if (p == NULL)
		return (NULL);
	status = FUNC6(p, snaplen);
	if (status < 0)
		goto fail;
	status = FUNC5(p, promisc);
	if (status < 0)
		goto fail;
	status = FUNC7(p, to_ms);
	if (status < 0)
		goto fail;
	/*
	 * Mark this as opened with pcap_open_live(), so that, for
	 * example, we show the full list of DLT_ values, rather
	 * than just the ones that are compatible with capturing
	 * when not in monitor mode.  That allows existing applications
	 * to work the way they used to work, but allows new applications
	 * that know about the new open API to, for example, find out the
	 * DLT_ values that they can select without changing whether
	 * the adapter is in monitor mode or not.
	 */
	p->oldstyle = 1;
	status = FUNC0(p);
	if (status < 0)
		goto fail;
	return (p);
fail:
	if (status == PCAP_ERROR)
		FUNC8(errbuf, PCAP_ERRBUF_SIZE, "%s: %s", device,
		    p->errbuf);
	else if (status == PCAP_ERROR_NO_SUCH_DEVICE ||
	    status == PCAP_ERROR_PERM_DENIED ||
	    status == PCAP_ERROR_PROMISC_PERM_DENIED)
		FUNC8(errbuf, PCAP_ERRBUF_SIZE, "%s: %s (%s)", device,
		    FUNC9(status), p->errbuf);
	else
		FUNC8(errbuf, PCAP_ERRBUF_SIZE, "%s: %s", device,
		    FUNC9(status));
	FUNC1(p);
	return (NULL);
}