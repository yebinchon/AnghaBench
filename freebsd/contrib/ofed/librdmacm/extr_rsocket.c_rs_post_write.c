
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct rsocket {TYPE_3__* cm_id; } ;
struct ibv_sge {int dummy; } ;
struct TYPE_4__ {int rkey; int remote_addr; } ;
struct TYPE_5__ {TYPE_1__ rdma; } ;
struct ibv_send_wr {int num_sge; int send_flags; TYPE_2__ wr; int opcode; struct ibv_sge* sg_list; int * next; int wr_id; } ;
struct TYPE_6__ {int qp; } ;


 int IBV_WR_RDMA_WRITE ;
 int ibv_post_send (int ,struct ibv_send_wr*,struct ibv_send_wr**) ;
 int rdma_seterrno (int ) ;
 int rs_send_wr_id (int ) ;

__attribute__((used)) static int rs_post_write(struct rsocket *rs,
    struct ibv_sge *sgl, int nsge,
    uint32_t wr_data, int flags,
    uint64_t addr, uint32_t rkey)
{
 struct ibv_send_wr wr, *bad;

 wr.wr_id = rs_send_wr_id(wr_data);
 wr.next = ((void*)0);
 wr.sg_list = sgl;
 wr.num_sge = nsge;
 wr.opcode = IBV_WR_RDMA_WRITE;
 wr.send_flags = flags;
 wr.wr.rdma.remote_addr = addr;
 wr.wr.rdma.rkey = rkey;

 return rdma_seterrno(ibv_post_send(rs->cm_id->qp, &wr, &bad));
}
