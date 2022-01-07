
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isgl; } ;
union t4_recv_wr {TYPE_1__ recv; } ;
typedef int u8 ;
struct ibv_recv_wr {int num_sge; int sg_list; } ;
struct fw_ri_sge {int dummy; } ;
struct c4iw_qp {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 int build_isgl (int *,int ,int,int *) ;

__attribute__((used)) static int build_rdma_recv(struct c4iw_qp *qhp, union t4_recv_wr *wqe,
      struct ibv_recv_wr *wr, u8 *len16)
{
 int ret;

 ret = build_isgl(&wqe->recv.isgl, wr->sg_list, wr->num_sge, ((void*)0));
 if (ret)
  return ret;
 *len16 = DIV_ROUND_UP(sizeof wqe->recv +
         wr->num_sge * sizeof(struct fw_ri_sge), 16);
 return 0;
}
