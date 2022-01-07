
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
struct ibv_port_attr {int link_layer; } ;
struct ibv_device_attr {int phys_port_cnt; scalar_t__ max_qp_rd_atom; scalar_t__ max_qp_init_rd_atom; int max_qp_wr; } ;
struct cma_device {int port_cnt; int * verbs; void* max_responder_resources; void* max_initiator_depth; int max_qpsize; TYPE_1__* port; int guid; } ;
struct TYPE_2__ {int link_layer; } ;


 int ENODEV ;
 int ENOMEM ;
 int ERR (int) ;
 int IBV_LINK_LAYER_UNSPECIFIED ;
 int cma_init_cnt ;
 int ibv_close_device (int *) ;
 int ibv_query_device (int *,struct ibv_device_attr*) ;
 scalar_t__ ibv_query_port (int *,int,struct ibv_port_attr*) ;
 TYPE_1__* malloc (int) ;
 int * ucma_open_device (int ) ;

__attribute__((used)) static int ucma_init_device(struct cma_device *cma_dev)
{
 struct ibv_port_attr port_attr;
 struct ibv_device_attr attr;
 int i, ret;

 if (cma_dev->verbs)
  return 0;

 cma_dev->verbs = ucma_open_device(cma_dev->guid);
 if (!cma_dev->verbs)
  return ERR(ENODEV);

 ret = ibv_query_device(cma_dev->verbs, &attr);
 if (ret) {
  ret = ERR(ret);
  goto err;
 }

 cma_dev->port = malloc(sizeof(*cma_dev->port) * attr.phys_port_cnt);
 if (!cma_dev->port) {
  ret = ERR(ENOMEM);
  goto err;
 }

 for (i = 1; i <= attr.phys_port_cnt; i++) {
  if (ibv_query_port(cma_dev->verbs, i, &port_attr))
   cma_dev->port[i - 1].link_layer = IBV_LINK_LAYER_UNSPECIFIED;
  else
   cma_dev->port[i - 1].link_layer = port_attr.link_layer;
 }

 cma_dev->port_cnt = attr.phys_port_cnt;
 cma_dev->max_qpsize = attr.max_qp_wr;
 cma_dev->max_initiator_depth = (uint8_t) attr.max_qp_init_rd_atom;
 cma_dev->max_responder_resources = (uint8_t) attr.max_qp_rd_atom;
 cma_init_cnt++;
 return 0;

err:
 ibv_close_device(cma_dev->verbs);
 cma_dev->verbs = ((void*)0);
 return ret;
}
