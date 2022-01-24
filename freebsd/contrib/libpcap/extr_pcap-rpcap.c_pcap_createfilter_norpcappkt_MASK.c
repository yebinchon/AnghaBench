#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct pcap_rpcap {int rmt_flags; int rmt_clientside; int /*<<< orphan*/  currentfilter; int /*<<< orphan*/  rmt_sockdata; int /*<<< orphan*/  rmt_sockctrl; } ;
struct bpf_program {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  peerctrlport ;
typedef  int /*<<< orphan*/  peeraddress ;
struct TYPE_4__ {int /*<<< orphan*/  errbuf; struct pcap_rpcap* priv; } ;
typedef  TYPE_1__ pcap_t ;
typedef  int /*<<< orphan*/  mydataport ;
typedef  int /*<<< orphan*/  myctrlport ;
typedef  int /*<<< orphan*/  myaddress ;

/* Variables and functions */
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int PCAP_OPENFLAG_NOCAPTURE_RPCAP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct sockaddr*,int,char*,int,char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int FUNC5 (TYPE_1__*,struct bpf_program*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,char*,char*,char*,char*,char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(pcap_t *fp, struct bpf_program *prog)
{
	struct pcap_rpcap *pr = fp->priv;	/* structure used when doing a remote live capture */
	int RetVal = 0;

	/* We do not want to capture our RPCAP traffic. So, let's update the filter */
	if (pr->rmt_flags & PCAP_OPENFLAG_NOCAPTURE_RPCAP)
	{
		struct sockaddr_storage saddr;		/* temp, needed to retrieve the network data port chosen on the local machine */
		socklen_t saddrlen;					/* temp, needed to retrieve the network data port chosen on the local machine */
		char myaddress[128];
		char myctrlport[128];
		char mydataport[128];
		char peeraddress[128];
		char peerctrlport[128];
		char *newfilter;
		const int newstringsize = 1024;
		size_t currentfiltersize;

		/* Get the name/port of our peer */
		saddrlen = sizeof(struct sockaddr_storage);
		if (FUNC2(pr->rmt_sockctrl, (struct sockaddr *) &saddr, &saddrlen) == -1)
		{
			FUNC7("getpeername(): ", fp->errbuf, PCAP_ERRBUF_SIZE);
			return -1;
		}

		if (FUNC1((struct sockaddr *) &saddr, saddrlen, peeraddress,
			sizeof(peeraddress), peerctrlport, sizeof(peerctrlport), NI_NUMERICHOST | NI_NUMERICSERV))
		{
			FUNC7("getnameinfo(): ", fp->errbuf, PCAP_ERRBUF_SIZE);
			return -1;
		}

		/* We cannot check the data port, because this is available only in case of TCP sockets */
		/* Get the name/port of the current host */
		if (FUNC3(pr->rmt_sockctrl, (struct sockaddr *) &saddr, &saddrlen) == -1)
		{
			FUNC7("getsockname(): ", fp->errbuf, PCAP_ERRBUF_SIZE);
			return -1;
		}

		/* Get the local port the system picked up */
		if (FUNC1((struct sockaddr *) &saddr, saddrlen, myaddress,
			sizeof(myaddress), myctrlport, sizeof(myctrlport), NI_NUMERICHOST | NI_NUMERICSERV))
		{
			FUNC7("getnameinfo(): ", fp->errbuf, PCAP_ERRBUF_SIZE);
			return -1;
		}

		/* Let's now check the data port */
		if (FUNC3(pr->rmt_sockdata, (struct sockaddr *) &saddr, &saddrlen) == -1)
		{
			FUNC7("getsockname(): ", fp->errbuf, PCAP_ERRBUF_SIZE);
			return -1;
		}

		/* Get the local port the system picked up */
		if (FUNC1((struct sockaddr *) &saddr, saddrlen, NULL, 0, mydataport, sizeof(mydataport), NI_NUMERICSERV))
		{
			FUNC7("getnameinfo(): ", fp->errbuf, PCAP_ERRBUF_SIZE);
			return -1;
		}

		currentfiltersize = pr->currentfilter ? FUNC8(pr->currentfilter) : 0;

		newfilter = (char *)FUNC4(currentfiltersize + newstringsize + 1);

		if (currentfiltersize)
		{
			FUNC6(newfilter, currentfiltersize + newstringsize,
				"(%s) and not (host %s and host %s and port %s and port %s) and not (host %s and host %s and port %s)",
				pr->currentfilter, myaddress, peeraddress, myctrlport, peerctrlport, myaddress, peeraddress, mydataport);
		}
		else
		{
			FUNC6(newfilter, currentfiltersize + newstringsize,
				"not (host %s and host %s and port %s and port %s) and not (host %s and host %s and port %s)",
				myaddress, peeraddress, myctrlport, peerctrlport, myaddress, peeraddress, mydataport);
		}

		newfilter[currentfiltersize + newstringsize] = 0;

		/*
		 * This is only an hack to prevent the save_current_filter
		 * routine, which will be called when we call pcap_compile(),
		 * from saving the modified filter.
		 */
		pr->rmt_clientside = 0;

		if (FUNC5(fp, prog, newfilter, 1, 0) == -1)
			RetVal = -1;

		/* Undo the hack. */
		pr->rmt_clientside = 1;

		FUNC0(newfilter);
	}

	return RetVal;
}