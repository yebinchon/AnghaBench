
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef uintptr_t uint64_t ;
struct pcap_rdmasniff {int qp; TYPE_1__* mr; } ;
struct ibv_sge {uintptr_t length; uintptr_t addr; int lkey; } ;
struct ibv_recv_wr {uintptr_t wr_id; int num_sge; int * next; struct ibv_sge* sg_list; } ;
struct TYPE_5__ {scalar_t__ buffer; struct pcap_rdmasniff* priv; } ;
typedef TYPE_2__ pcap_t ;
struct TYPE_4__ {int lkey; } ;


 uintptr_t RDMASNIFF_RECEIVE_SIZE ;
 int ibv_post_recv (int ,struct ibv_recv_wr*,struct ibv_recv_wr**) ;

__attribute__((used)) static void
rdmasniff_post_recv(pcap_t *handle, uint64_t wr_id)
{
 struct pcap_rdmasniff *priv = handle->priv;
 struct ibv_sge sg_entry;
 struct ibv_recv_wr wr, *bad_wr;

 sg_entry.length = RDMASNIFF_RECEIVE_SIZE;
 sg_entry.addr = (uintptr_t) handle->buffer + RDMASNIFF_RECEIVE_SIZE * wr_id;
 sg_entry.lkey = priv->mr->lkey;

 wr.wr_id = wr_id;
 wr.num_sge = 1;
 wr.sg_list = &sg_entry;
 wr.next = ((void*)0);

 ibv_post_recv(priv->qp, &wr, &bad_wr);
}
