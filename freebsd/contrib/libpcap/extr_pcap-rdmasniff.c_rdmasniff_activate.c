
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pcap_rdmasniff {void* oneshot_buffer; scalar_t__ context; scalar_t__ pd; TYPE_6__* channel; scalar_t__ cq; scalar_t__ qp; scalar_t__ flow; scalar_t__ mr; int port_num; int rdma_device; } ;
struct TYPE_9__ {int max_recv_wr; int max_recv_sge; } ;
struct ibv_qp_init_attr {int size; int port; int type; int qp_state; int port_num; int qp_type; TYPE_1__ cap; scalar_t__ recv_cq; scalar_t__ send_cq; } ;
struct ibv_qp_attr {int size; int port; int type; int qp_state; int port_num; int qp_type; TYPE_1__ cap; scalar_t__ recv_cq; scalar_t__ send_cq; } ;
struct ibv_port_attr {scalar_t__ link_layer; } ;
struct ibv_flow_attr {int size; int port; int type; int qp_state; int port_num; int qp_type; TYPE_1__ cap; scalar_t__ recv_cq; scalar_t__ send_cq; } ;
struct TYPE_10__ {int device; } ;
struct TYPE_11__ {int bufsize; int snapshot; int selectable_fd; int oneshot_callback; int setnonblock_op; int getnonblock_op; int * set_datalink_op; int * setdirection_op; int setfilter_op; int cleanup_op; int stats_op; int read_op; scalar_t__ offset; int linktype; TYPE_2__ opt; int errbuf; void* buffer; struct pcap_rdmasniff* priv; } ;
typedef TYPE_3__ pcap_t ;
struct TYPE_12__ {int fd; } ;


 int DLT_EN10MB ;
 int DLT_INFINIBAND ;
 int IBV_ACCESS_LOCAL_WRITE ;
 int IBV_FLOW_ATTR_SNIFFER ;
 scalar_t__ IBV_LINK_LAYER_INFINIBAND ;
 int IBV_QPS_INIT ;
 int IBV_QPS_RTR ;
 int IBV_QPT_RAW_PACKET ;
 int IBV_QP_PORT ;
 int IBV_QP_STATE ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int RDMASNIFF_NUM_RECEIVES ;
 int RDMASNIFF_RECEIVE_SIZE ;
 int free (void*) ;
 scalar_t__ ibv_alloc_pd (scalar_t__) ;
 int ibv_close_device (scalar_t__) ;
 TYPE_6__* ibv_create_comp_channel (scalar_t__) ;
 scalar_t__ ibv_create_cq (scalar_t__,int,int *,TYPE_6__*,int ) ;
 scalar_t__ ibv_create_flow (scalar_t__,struct ibv_qp_init_attr*) ;
 scalar_t__ ibv_create_qp (scalar_t__,struct ibv_qp_init_attr*) ;
 int ibv_dealloc_pd (scalar_t__) ;
 int ibv_dereg_mr (scalar_t__) ;
 int ibv_destroy_comp_channel (TYPE_6__*) ;
 int ibv_destroy_cq (scalar_t__) ;
 int ibv_destroy_flow (scalar_t__) ;
 int ibv_destroy_qp (scalar_t__) ;
 scalar_t__ ibv_modify_qp (scalar_t__,struct ibv_qp_init_attr*,int) ;
 scalar_t__ ibv_open_device (int ) ;
 int ibv_query_port (scalar_t__,int ,struct ibv_port_attr*) ;
 scalar_t__ ibv_reg_mr (scalar_t__,void*,int,int ) ;
 int ibv_req_notify_cq (scalar_t__,int ) ;
 int install_bpf_program ;
 void* malloc (int) ;
 int memset (struct ibv_qp_init_attr*,int ,int) ;
 int pcap_getnonblock_fd ;
 int pcap_setnonblock_fd ;
 int pcap_snprintf (int ,int ,char*,int ) ;
 int rdmasniff_cleanup ;
 int rdmasniff_oneshot ;
 int rdmasniff_post_recv (TYPE_3__*,int) ;
 int rdmasniff_read ;
 int rdmasniff_stats ;

__attribute__((used)) static int
rdmasniff_activate(pcap_t *handle)
{
 struct pcap_rdmasniff *priv = handle->priv;
 struct ibv_qp_init_attr qp_init_attr;
 struct ibv_qp_attr qp_attr;
 struct ibv_flow_attr flow_attr;
 struct ibv_port_attr port_attr;
 int i;

 priv->context = ibv_open_device(priv->rdma_device);
 if (!priv->context) {
  pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE,
         "Failed to open device %s", handle->opt.device);
  goto error;
 }

 priv->pd = ibv_alloc_pd(priv->context);
 if (!priv->pd) {
  pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE,
         "Failed to alloc PD for device %s", handle->opt.device);
  goto error;
 }

 priv->channel = ibv_create_comp_channel(priv->context);
 if (!priv->channel) {
  pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE,
         "Failed to create comp channel for device %s", handle->opt.device);
  goto error;
 }

 priv->cq = ibv_create_cq(priv->context, RDMASNIFF_NUM_RECEIVES,
     ((void*)0), priv->channel, 0);
 if (!priv->cq) {
  pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE,
         "Failed to create CQ for device %s", handle->opt.device);
  goto error;
 }

 ibv_req_notify_cq(priv->cq, 0);

 memset(&qp_init_attr, 0, sizeof qp_init_attr);
 qp_init_attr.send_cq = qp_init_attr.recv_cq = priv->cq;
 qp_init_attr.cap.max_recv_wr = RDMASNIFF_NUM_RECEIVES;
 qp_init_attr.cap.max_recv_sge = 1;
 qp_init_attr.qp_type = IBV_QPT_RAW_PACKET;
 priv->qp = ibv_create_qp(priv->pd, &qp_init_attr);
 if (!priv->qp) {
  pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE,
         "Failed to create QP for device %s", handle->opt.device);
  goto error;
 }

 memset(&qp_attr, 0, sizeof qp_attr);
 qp_attr.qp_state = IBV_QPS_INIT;
 qp_attr.port_num = priv->port_num;
 if (ibv_modify_qp(priv->qp, &qp_attr, IBV_QP_STATE | IBV_QP_PORT)) {
  pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE,
         "Failed to modify QP to INIT for device %s", handle->opt.device);
  goto error;
 }

 memset(&qp_attr, 0, sizeof qp_attr);
 qp_attr.qp_state = IBV_QPS_RTR;
 if (ibv_modify_qp(priv->qp, &qp_attr, IBV_QP_STATE)) {
  pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE,
         "Failed to modify QP to RTR for device %s", handle->opt.device);
  goto error;
 }

 memset(&flow_attr, 0, sizeof flow_attr);
 flow_attr.type = IBV_FLOW_ATTR_SNIFFER;
 flow_attr.size = sizeof flow_attr;
 flow_attr.port = priv->port_num;
 priv->flow = ibv_create_flow(priv->qp, &flow_attr);
 if (!priv->flow) {
  pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE,
         "Failed to create flow for device %s", handle->opt.device);
  goto error;
 }

 handle->bufsize = RDMASNIFF_NUM_RECEIVES * RDMASNIFF_RECEIVE_SIZE;
 handle->buffer = malloc(handle->bufsize);
 if (!handle->buffer) {
  pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE,
         "Failed to allocate receive buffer for device %s", handle->opt.device);
  goto error;
 }

 priv->oneshot_buffer = malloc(RDMASNIFF_RECEIVE_SIZE);
 if (!priv->oneshot_buffer) {
  pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE,
         "Failed to allocate oneshot buffer for device %s", handle->opt.device);
  goto error;
 }

 priv->mr = ibv_reg_mr(priv->pd, handle->buffer, handle->bufsize, IBV_ACCESS_LOCAL_WRITE);
 if (!priv->mr) {
  pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE,
         "Failed to register MR for device %s", handle->opt.device);
  goto error;
 }


 for (i = 0; i < RDMASNIFF_NUM_RECEIVES; ++i) {
  rdmasniff_post_recv(handle, i);
 }

 if (!ibv_query_port(priv->context, priv->port_num, &port_attr) &&
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
 handle->setdirection_op = ((void*)0);
 handle->set_datalink_op = ((void*)0);
 handle->getnonblock_op = pcap_getnonblock_fd;
 handle->setnonblock_op = pcap_setnonblock_fd;
 handle->oneshot_callback = rdmasniff_oneshot;
 handle->selectable_fd = priv->channel->fd;

 return 0;

error:
 if (priv->mr) {
  ibv_dereg_mr(priv->mr);
 }

 if (priv->flow) {
  ibv_destroy_flow(priv->flow);
 }

 if (priv->qp) {
  ibv_destroy_qp(priv->qp);
 }

 if (priv->cq) {
  ibv_destroy_cq(priv->cq);
 }

 if (priv->channel) {
  ibv_destroy_comp_channel(priv->channel);
 }

 if (priv->pd) {
  ibv_dealloc_pd(priv->pd);
 }

 if (priv->context) {
  ibv_close_device(priv->context);
 }

 if (priv->oneshot_buffer) {
  free(priv->oneshot_buffer);
 }

 return PCAP_ERROR;
}
