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
struct rpcap_header {int /*<<< orphan*/  plen; } ;
struct rpcap_filterbpf_insn {int dummy; } ;
struct rpcap_filter {int dummy; } ;
struct pcap_rpcap {int /*<<< orphan*/  rmt_sockctrl; int /*<<< orphan*/  protocol_version; } ;
struct bpf_program {int bf_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  errbuf; struct pcap_rpcap* priv; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  RPCAP_MSG_UPDATEFILTER_REQ ; 
 int RPCAP_NETBUF_SIZE ; 
 int /*<<< orphan*/  SOCKBUF_CHECKONLY ; 
 scalar_t__ FUNC0 (TYPE_1__*,char*,int*,struct bpf_program*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpcap_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rpcap_header*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(pcap_t *fp, struct bpf_program *prog)
{
	struct pcap_rpcap *pr = fp->priv;	/* structure used when doing a remote live capture */
	char sendbuf[RPCAP_NETBUF_SIZE];	/* temporary buffer in which data to be sent is buffered */
	int sendbufidx = 0;			/* index which keeps the number of bytes currently buffered */
	struct rpcap_header header;		/* To keep the reply message */

	if (FUNC4(NULL, sizeof(struct rpcap_header), NULL, &sendbufidx,
		RPCAP_NETBUF_SIZE, SOCKBUF_CHECKONLY, fp->errbuf, PCAP_ERRBUF_SIZE))
		return -1;

	FUNC1((struct rpcap_header *) sendbuf,
	    pr->protocol_version, RPCAP_MSG_UPDATEFILTER_REQ, 0,
	    sizeof(struct rpcap_filter) + prog->bf_len * sizeof(struct rpcap_filterbpf_insn));

	if (FUNC0(fp, &sendbuf[sendbufidx], &sendbufidx, prog))
		return -1;

	if (FUNC5(pr->rmt_sockctrl, sendbuf, sendbufidx, fp->errbuf,
	    PCAP_ERRBUF_SIZE) < 0)
		return -1;

	/* Receive and process the reply message header. */
	if (FUNC3(pr->rmt_sockctrl, pr->protocol_version,
	    RPCAP_MSG_UPDATEFILTER_REQ, &header, fp->errbuf) == -1)
		return -1;

	/*
	 * It shouldn't have any contents; discard it if it does.
	 */
	if (FUNC2(pr->rmt_sockctrl, header.plen, fp->errbuf) == -1)
		return -1;

	return 0;
}