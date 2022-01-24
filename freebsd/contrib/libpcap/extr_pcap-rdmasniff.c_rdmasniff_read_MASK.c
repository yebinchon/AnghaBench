#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct pcap_rdmasniff {int cq_event; int /*<<< orphan*/  packets_recv; int /*<<< orphan*/  cq; int /*<<< orphan*/  channel; } ;
struct pcap_pkthdr {int /*<<< orphan*/  caplen; int /*<<< orphan*/  len; int /*<<< orphan*/  ts; } ;
struct ibv_wc {scalar_t__ status; int wr_id; int /*<<< orphan*/  byte_len; } ;
struct ibv_cq {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * bf_insns; } ;
struct TYPE_6__ {scalar_t__ break_loop; TYPE_1__ fcode; scalar_t__ buffer; scalar_t__ snapshot; struct pcap_rdmasniff* priv; } ;
typedef  TYPE_2__ pcap_t ;
typedef  int /*<<< orphan*/  (* pcap_handler ) (int /*<<< orphan*/ *,struct pcap_pkthdr*,int /*<<< orphan*/ *) ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ IBV_WC_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 int PCAP_ERROR ; 
 int PCAP_ERROR_BREAK ; 
 int RDMASNIFF_RECEIVE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct ibv_cq**,void**) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,struct ibv_wc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC11(pcap_t *handle, int max_packets, pcap_handler callback, u_char *user)
{
	struct pcap_rdmasniff *priv = handle->priv;
	struct ibv_cq *ev_cq;
	void *ev_ctx;
	struct ibv_wc wc;
	struct pcap_pkthdr pkth;
	u_char *pktd;
	int count = 0;

	if (!priv->cq_event) {
		while (FUNC5(priv->channel, &ev_cq, &ev_ctx) < 0) {
			if (errno != EINTR) {
				return PCAP_ERROR;
			}
			if (handle->break_loop) {
				handle->break_loop = 0;
				return PCAP_ERROR_BREAK;
			}
		}
		FUNC4(priv->cq, 1);
		FUNC7(priv->cq, 0);
		priv->cq_event = 1;
	}

	while (count < max_packets || FUNC0(max_packets)) {
		if (FUNC6(priv->cq, 1, &wc) != 1) {
			priv->cq_event = 0;
			break;
		}

		if (wc.status != IBV_WC_SUCCESS) {
			FUNC2(stderr, "failed WC wr_id %lld status %ld/%d\n",
				(unsigned long long) wc.wr_id,
				wc.status, FUNC8(wc.status));
			continue;
		}

		pkth.len = wc.byte_len;
		pkth.caplen = FUNC9(pkth.len, (u_int)handle->snapshot);
		FUNC3(&pkth.ts, NULL);

		pktd = (u_char *) handle->buffer + wc.wr_id * RDMASNIFF_RECEIVE_SIZE;

		if (handle->fcode.bf_insns == NULL ||
		    FUNC1(handle->fcode.bf_insns, pktd, pkth.len, pkth.caplen)) {
			callback(user, &pkth, pktd);
			++priv->packets_recv;
			++count;
		}

		FUNC10(handle, wc.wr_id);

		if (handle->break_loop) {
			handle->break_loop = 0;
			return PCAP_ERROR_BREAK;
		}
	}

	return count;
}