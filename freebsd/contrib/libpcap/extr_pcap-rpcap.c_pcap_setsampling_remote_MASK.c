#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8 ;
typedef  scalar_t__ uint16 ;
struct rpcap_sampling {scalar_t__ value; scalar_t__ method; } ;
struct rpcap_header {int /*<<< orphan*/  plen; } ;
struct pcap_rpcap {int /*<<< orphan*/  rmt_sockctrl; int /*<<< orphan*/  protocol_version; } ;
struct TYPE_4__ {int method; int value; } ;
struct TYPE_5__ {int /*<<< orphan*/  errbuf; TYPE_1__ rmt_samp; struct pcap_rpcap* priv; } ;
typedef  TYPE_2__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int PCAP_SAMP_NOSAMP ; 
 int /*<<< orphan*/  RPCAP_MSG_SETSAMPLING_REQ ; 
 int RPCAP_NETBUF_SIZE ; 
 int /*<<< orphan*/  SOCKBUF_CHECKONLY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rpcap_sampling*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rpcap_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rpcap_header*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(pcap_t *fp)
{
	struct pcap_rpcap *pr = fp->priv;	/* structure used when doing a remote live capture */
	char sendbuf[RPCAP_NETBUF_SIZE];/* temporary buffer in which data to be sent is buffered */
	int sendbufidx = 0;			/* index which keeps the number of bytes currently buffered */
	struct rpcap_header header;		/* To keep the reply message */
	struct rpcap_sampling *sampling_pars;	/* Structure that is needed to send sampling parameters to the remote host */

	/* If no samping is requested, return 'ok' */
	if (fp->rmt_samp.method == PCAP_SAMP_NOSAMP)
		return 0;

	/*
	 * Check for sampling parameters that don't fit in a message.
	 * We'll let the server complain about invalid parameters
	 * that do fit into the message.
	 */
	if (fp->rmt_samp.method < 0 || fp->rmt_samp.method > 255) {
		FUNC2(fp->errbuf, PCAP_ERRBUF_SIZE,
		    "Invalid sampling method %d", fp->rmt_samp.method);
		return -1;
	}
	if (fp->rmt_samp.value < 0 || fp->rmt_samp.value > 65535) {
		FUNC2(fp->errbuf, PCAP_ERRBUF_SIZE,
		    "Invalid sampling value %d", fp->rmt_samp.value);
		return -1;
	}

	if (FUNC6(NULL, sizeof(struct rpcap_header), NULL,
		&sendbufidx, RPCAP_NETBUF_SIZE, SOCKBUF_CHECKONLY, fp->errbuf, PCAP_ERRBUF_SIZE))
		return -1;

	FUNC3((struct rpcap_header *) sendbuf,
	    pr->protocol_version, RPCAP_MSG_SETSAMPLING_REQ, 0,
	    sizeof(struct rpcap_sampling));

	/* Fill the structure needed to open an adapter remotely */
	sampling_pars = (struct rpcap_sampling *) &sendbuf[sendbufidx];

	if (FUNC6(NULL, sizeof(struct rpcap_sampling), NULL,
		&sendbufidx, RPCAP_NETBUF_SIZE, SOCKBUF_CHECKONLY, fp->errbuf, PCAP_ERRBUF_SIZE))
		return -1;

	FUNC1(sampling_pars, 0, sizeof(struct rpcap_sampling));

	sampling_pars->method = (uint8)fp->rmt_samp.method;
	sampling_pars->value = (uint16)FUNC0(fp->rmt_samp.value);

	if (FUNC7(pr->rmt_sockctrl, sendbuf, sendbufidx, fp->errbuf,
	    PCAP_ERRBUF_SIZE) < 0)
		return -1;

	/* Receive and process the reply message header. */
	if (FUNC5(pr->rmt_sockctrl, pr->protocol_version,
	    RPCAP_MSG_SETSAMPLING_REQ, &header, fp->errbuf) == -1)
		return -1;

	/*
	 * It shouldn't have any contents; discard it if it does.
	 */
	if (FUNC4(pr->rmt_sockctrl, header.plen, fp->errbuf) == -1)
		return -1;

	return 0;
}