
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_sge; int max_wr; } ;
struct ibv_xrcd_init_attr {int comp_mask; int fd; int oflags; scalar_t__ pd; void* cq; scalar_t__ xrcd; int srq_type; TYPE_1__ attr; } ;
struct ibv_srq_init_attr_ex {int comp_mask; int fd; int oflags; scalar_t__ pd; void* cq; scalar_t__ xrcd; int srq_type; TYPE_1__ attr; } ;
struct ibv_port_attr {scalar_t__ link_layer; int lid; } ;
struct TYPE_4__ {int size; int fd; int srq; int context; scalar_t__ pd; void* recv_cq; scalar_t__ xrcd; int num_clients; void* send_cq; scalar_t__ use_event; int * channel; int mr; struct ibv_xrcd_init_attr* buf; int lid; int ib_port; void* rem_dest; void* send_qp; void* recv_qp; } ;


 int IBV_ACCESS_LOCAL_WRITE ;
 scalar_t__ IBV_LINK_LAYER_ETHERNET ;
 int IBV_SRQT_XRC ;
 int IBV_SRQ_INIT_ATTR_CQ ;
 int IBV_SRQ_INIT_ATTR_PD ;
 int IBV_SRQ_INIT_ATTR_TYPE ;
 int IBV_SRQ_INIT_ATTR_XRCD ;
 int IBV_XRCD_INIT_ATTR_FD ;
 int IBV_XRCD_INIT_ATTR_OFLAGS ;
 int O_CREAT ;
 int O_RDONLY ;
 int S_IRGRP ;
 int S_IRUSR ;
 void* calloc (int ,int) ;
 scalar_t__ create_qps () ;
 TYPE_2__ ctx ;
 int errno ;
 int fprintf (int ,char*,...) ;
 scalar_t__ ibv_alloc_pd (int ) ;
 int * ibv_create_comp_channel (int ) ;
 void* ibv_create_cq (int ,int ,void**,int *,int ) ;
 int ibv_create_srq_ex (int ,struct ibv_xrcd_init_attr*) ;
 scalar_t__ ibv_open_xrcd (int ,struct ibv_xrcd_init_attr*) ;
 int ibv_reg_mr (scalar_t__,struct ibv_xrcd_init_attr*,int,int ) ;
 scalar_t__ ibv_req_notify_cq (void*,int ) ;
 struct ibv_xrcd_init_attr* memalign (int ,int) ;
 int memset (struct ibv_xrcd_init_attr*,int ,int) ;
 int open (char*,int,int) ;
 scalar_t__ open_device (char*) ;
 int page_size ;
 scalar_t__ pp_get_port_info (int ,int ,struct ibv_port_attr*) ;
 int stderr ;

__attribute__((used)) static int pp_init_ctx(char *ib_devname)
{
 struct ibv_srq_init_attr_ex attr;
 struct ibv_xrcd_init_attr xrcd_attr;
 struct ibv_port_attr port_attr;

 ctx.recv_qp = calloc(ctx.num_clients, sizeof *ctx.recv_qp);
 ctx.send_qp = calloc(ctx.num_clients, sizeof *ctx.send_qp);
 ctx.rem_dest = calloc(ctx.num_clients, sizeof *ctx.rem_dest);
 if (!ctx.recv_qp || !ctx.send_qp || !ctx.rem_dest)
  return 1;

 if (open_device(ib_devname)) {
  fprintf(stderr, "Failed to open device\n");
  return 1;
 }

 if (pp_get_port_info(ctx.context, ctx.ib_port, &port_attr)) {
  fprintf(stderr, "Failed to get port info\n");
  return 1;
 }

 ctx.lid = port_attr.lid;
 if (port_attr.link_layer != IBV_LINK_LAYER_ETHERNET && !ctx.lid) {
  fprintf(stderr, "Couldn't get local LID\n");
  return 1;
 }

 ctx.buf = memalign(page_size, ctx.size);
 if (!ctx.buf) {
  fprintf(stderr, "Couldn't allocate work buf.\n");
  return 1;
 }

 memset(ctx.buf, 0, ctx.size);

 if (ctx.use_event) {
  ctx.channel = ibv_create_comp_channel(ctx.context);
  if (!ctx.channel) {
   fprintf(stderr, "Couldn't create completion channel\n");
   return 1;
  }
 }

 ctx.pd = ibv_alloc_pd(ctx.context);
 if (!ctx.pd) {
  fprintf(stderr, "Couldn't allocate PD\n");
  return 1;
 }

 ctx.mr = ibv_reg_mr(ctx.pd, ctx.buf, ctx.size, IBV_ACCESS_LOCAL_WRITE);
 if (!ctx.mr) {
  fprintf(stderr, "Couldn't register MR\n");
  return 1;
 }

 ctx.fd = open("/tmp/xrc_domain", O_RDONLY | O_CREAT, S_IRUSR | S_IRGRP);
 if (ctx.fd < 0) {
  fprintf(stderr,
   "Couldn't create the file for the XRC Domain "
   "but not stopping %d\n", errno);
  ctx.fd = -1;
 }

 memset(&xrcd_attr, 0, sizeof xrcd_attr);
 xrcd_attr.comp_mask = IBV_XRCD_INIT_ATTR_FD | IBV_XRCD_INIT_ATTR_OFLAGS;
 xrcd_attr.fd = ctx.fd;
 xrcd_attr.oflags = O_CREAT;
 ctx.xrcd = ibv_open_xrcd(ctx.context, &xrcd_attr);
 if (!ctx.xrcd) {
  fprintf(stderr, "Couldn't Open the XRC Domain %d\n", errno);
  return 1;
 }

 ctx.recv_cq = ibv_create_cq(ctx.context, ctx.num_clients, &ctx.recv_cq,
        ctx.channel, 0);
 if (!ctx.recv_cq) {
  fprintf(stderr, "Couldn't create recv CQ\n");
  return 1;
 }

 if (ctx.use_event) {
  if (ibv_req_notify_cq(ctx.recv_cq, 0)) {
   fprintf(stderr, "Couldn't request CQ notification\n");
   return 1;
  }
 }

 ctx.send_cq = ibv_create_cq(ctx.context, ctx.num_clients, ((void*)0), ((void*)0), 0);
 if (!ctx.send_cq) {
  fprintf(stderr, "Couldn't create send CQ\n");
  return 1;
 }

 memset(&attr, 0, sizeof attr);
 attr.attr.max_wr = ctx.num_clients;
 attr.attr.max_sge = 1;
 attr.comp_mask = IBV_SRQ_INIT_ATTR_TYPE | IBV_SRQ_INIT_ATTR_XRCD |
    IBV_SRQ_INIT_ATTR_CQ | IBV_SRQ_INIT_ATTR_PD;
 attr.srq_type = IBV_SRQT_XRC;
 attr.xrcd = ctx.xrcd;
 attr.cq = ctx.recv_cq;
 attr.pd = ctx.pd;

 ctx.srq = ibv_create_srq_ex(ctx.context, &attr);
 if (!ctx.srq) {
  fprintf(stderr, "Couldn't create SRQ\n");
  return 1;
 }

 if (create_qps())
  return 1;

 return 0;
}
