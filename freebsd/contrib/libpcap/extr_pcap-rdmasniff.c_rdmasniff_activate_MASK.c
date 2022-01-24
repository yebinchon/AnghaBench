#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pcap_rdmasniff {void* oneshot_buffer; scalar_t__ context; scalar_t__ pd; TYPE_6__* channel; scalar_t__ cq; scalar_t__ qp; scalar_t__ flow; scalar_t__ mr; int /*<<< orphan*/  port_num; int /*<<< orphan*/  rdma_device; } ;
struct TYPE_9__ {int max_recv_wr; int max_recv_sge; } ;
struct ibv_qp_init_attr {int size; int /*<<< orphan*/  port; int /*<<< orphan*/  type; int /*<<< orphan*/  qp_state; int /*<<< orphan*/  port_num; int /*<<< orphan*/  qp_type; TYPE_1__ cap; scalar_t__ recv_cq; scalar_t__ send_cq; } ;
struct ibv_qp_attr {int size; int /*<<< orphan*/  port; int /*<<< orphan*/  type; int /*<<< orphan*/  qp_state; int /*<<< orphan*/  port_num; int /*<<< orphan*/  qp_type; TYPE_1__ cap; scalar_t__ recv_cq; scalar_t__ send_cq; } ;
struct ibv_port_attr {scalar_t__ link_layer; } ;
struct ibv_flow_attr {int size; int /*<<< orphan*/  port; int /*<<< orphan*/  type; int /*<<< orphan*/  qp_state; int /*<<< orphan*/  port_num; int /*<<< orphan*/  qp_type; TYPE_1__ cap; scalar_t__ recv_cq; scalar_t__ send_cq; } ;
struct TYPE_10__ {int /*<<< orphan*/  device; } ;
struct TYPE_11__ {int bufsize; int snapshot; int /*<<< orphan*/  selectable_fd; int /*<<< orphan*/  oneshot_callback; int /*<<< orphan*/  setnonblock_op; int /*<<< orphan*/  getnonblock_op; int /*<<< orphan*/ * set_datalink_op; int /*<<< orphan*/ * setdirection_op; int /*<<< orphan*/  setfilter_op; int /*<<< orphan*/  cleanup_op; int /*<<< orphan*/  stats_op; int /*<<< orphan*/  read_op; scalar_t__ offset; int /*<<< orphan*/  linktype; TYPE_2__ opt; int /*<<< orphan*/  errbuf; void* buffer; struct pcap_rdmasniff* priv; } ;
typedef  TYPE_3__ pcap_t ;
struct TYPE_12__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLT_EN10MB ; 
 int /*<<< orphan*/  DLT_INFINIBAND ; 
 int /*<<< orphan*/  IBV_ACCESS_LOCAL_WRITE ; 
 int /*<<< orphan*/  IBV_FLOW_ATTR_SNIFFER ; 
 scalar_t__ IBV_LINK_LAYER_INFINIBAND ; 
 int /*<<< orphan*/  IBV_QPS_INIT ; 
 int /*<<< orphan*/  IBV_QPS_RTR ; 
 int /*<<< orphan*/  IBV_QPT_RAW_PACKET ; 
 int IBV_QP_PORT ; 
 int IBV_QP_STATE ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int PCAP_ERROR ; 
 int RDMASNIFF_NUM_RECEIVES ; 
 int RDMASNIFF_RECEIVE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_6__* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int,int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,struct ibv_qp_init_attr*) ; 
 scalar_t__ FUNC6 (scalar_t__,struct ibv_qp_init_attr*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,struct ibv_qp_init_attr*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,struct ibv_port_attr*) ; 
 scalar_t__ FUNC16 (scalar_t__,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  install_bpf_program ; 
 void* FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct ibv_qp_init_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pcap_getnonblock_fd ; 
 int /*<<< orphan*/  pcap_setnonblock_fd ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rdmasniff_cleanup ; 
 int /*<<< orphan*/  rdmasniff_oneshot ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  rdmasniff_read ; 
 int /*<<< orphan*/  rdmasniff_stats ; 

__attribute__((used)) static int
FUNC22(pcap_t *handle)
{
	struct pcap_rdmasniff *priv = handle->priv;
	struct ibv_qp_init_attr qp_init_attr;
	struct ibv_qp_attr qp_attr;
	struct ibv_flow_attr flow_attr;
	struct ibv_port_attr port_attr;
	int i;

	priv->context = FUNC14(priv->rdma_device);
	if (!priv->context) {
		FUNC20(handle->errbuf, PCAP_ERRBUF_SIZE,
			      "Failed to open device %s", handle->opt.device);
		goto error;
	}

	priv->pd = FUNC1(priv->context);
	if (!priv->pd) {
		FUNC20(handle->errbuf, PCAP_ERRBUF_SIZE,
			      "Failed to alloc PD for device %s", handle->opt.device);
		goto error;
	}

	priv->channel = FUNC3(priv->context);
	if (!priv->channel) {
		FUNC20(handle->errbuf, PCAP_ERRBUF_SIZE,
			      "Failed to create comp channel for device %s", handle->opt.device);
		goto error;
	}

	priv->cq = FUNC4(priv->context, RDMASNIFF_NUM_RECEIVES,
				 NULL, priv->channel, 0);
	if (!priv->cq) {
		FUNC20(handle->errbuf, PCAP_ERRBUF_SIZE,
			      "Failed to create CQ for device %s", handle->opt.device);
		goto error;
	}

	FUNC17(priv->cq, 0);

	FUNC19(&qp_init_attr, 0, sizeof qp_init_attr);
	qp_init_attr.send_cq = qp_init_attr.recv_cq = priv->cq;
	qp_init_attr.cap.max_recv_wr = RDMASNIFF_NUM_RECEIVES;
	qp_init_attr.cap.max_recv_sge = 1;
	qp_init_attr.qp_type = IBV_QPT_RAW_PACKET;
	priv->qp = FUNC6(priv->pd, &qp_init_attr);
	if (!priv->qp) {
		FUNC20(handle->errbuf, PCAP_ERRBUF_SIZE,
			      "Failed to create QP for device %s", handle->opt.device);
		goto error;
	}

	FUNC19(&qp_attr, 0, sizeof qp_attr);
	qp_attr.qp_state = IBV_QPS_INIT;
	qp_attr.port_num = priv->port_num;
	if (FUNC13(priv->qp, &qp_attr, IBV_QP_STATE | IBV_QP_PORT)) {
		FUNC20(handle->errbuf, PCAP_ERRBUF_SIZE,
			      "Failed to modify QP to INIT for device %s", handle->opt.device);
		goto error;
	}

	FUNC19(&qp_attr, 0, sizeof qp_attr);
	qp_attr.qp_state = IBV_QPS_RTR;
	if (FUNC13(priv->qp, &qp_attr, IBV_QP_STATE)) {
		FUNC20(handle->errbuf, PCAP_ERRBUF_SIZE,
			      "Failed to modify QP to RTR for device %s", handle->opt.device);
		goto error;
	}

	FUNC19(&flow_attr, 0, sizeof flow_attr);
	flow_attr.type = IBV_FLOW_ATTR_SNIFFER;
	flow_attr.size = sizeof flow_attr;
	flow_attr.port = priv->port_num;
	priv->flow = FUNC5(priv->qp, &flow_attr);
	if (!priv->flow) {
		FUNC20(handle->errbuf, PCAP_ERRBUF_SIZE,
			      "Failed to create flow for device %s", handle->opt.device);
		goto error;
	}

	handle->bufsize = RDMASNIFF_NUM_RECEIVES * RDMASNIFF_RECEIVE_SIZE;
	handle->buffer = FUNC18(handle->bufsize);
	if (!handle->buffer) {
		FUNC20(handle->errbuf, PCAP_ERRBUF_SIZE,
			      "Failed to allocate receive buffer for device %s", handle->opt.device);
		goto error;
	}

	priv->oneshot_buffer = FUNC18(RDMASNIFF_RECEIVE_SIZE);
	if (!priv->oneshot_buffer) {
		FUNC20(handle->errbuf, PCAP_ERRBUF_SIZE,
			      "Failed to allocate oneshot buffer for device %s", handle->opt.device);
		goto error;
	}

	priv->mr = FUNC16(priv->pd, handle->buffer, handle->bufsize, IBV_ACCESS_LOCAL_WRITE);
	if (!priv->mr) {
		FUNC20(handle->errbuf, PCAP_ERRBUF_SIZE,
			      "Failed to register MR for device %s", handle->opt.device);
		goto error;
	}


	for (i = 0; i < RDMASNIFF_NUM_RECEIVES; ++i) {
		FUNC21(handle, i);
	}

	if (!FUNC15(priv->context, priv->port_num, &port_attr) &&
	    port_attr.link_layer == IBV_LINK_LAYER_INFINIBAND) {
		handle->linktype = DLT_INFINIBAND;
	} else {
		handle->linktype = DLT_EN10MB;
	}

	if (handle->snapshot <= 0 || handle->snapshot > RDMASNIFF_RECEIVE_SIZE)
		handle->snapshot = RDMASNIFF_RECEIVE_SIZE;

	handle->offset = 0;
	handle->read_op = rdmasniff_read;
	handle->stats_op = rdmasniff_stats;
	handle->cleanup_op = rdmasniff_cleanup;
	handle->setfilter_op = install_bpf_program;
	handle->setdirection_op = NULL;
	handle->set_datalink_op = NULL;
	handle->getnonblock_op = pcap_getnonblock_fd;
	handle->setnonblock_op = pcap_setnonblock_fd;
	handle->oneshot_callback = rdmasniff_oneshot;
	handle->selectable_fd = priv->channel->fd;

	return 0;

error:
	if (priv->mr) {
		FUNC8(priv->mr);
	}

	if (priv->flow) {
		FUNC11(priv->flow);
	}

	if (priv->qp) {
		FUNC12(priv->qp);
	}

	if (priv->cq) {
		FUNC10(priv->cq);
	}

	if (priv->channel) {
		FUNC9(priv->channel);
	}

	if (priv->pd) {
		FUNC7(priv->pd);
	}

	if (priv->context) {
		FUNC2(priv->context);
	}

	if (priv->oneshot_buffer) {
		FUNC0(priv->oneshot_buffer);
	}

	return PCAP_ERROR;
}