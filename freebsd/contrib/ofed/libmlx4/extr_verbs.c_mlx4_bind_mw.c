
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rkey; int bind_info; struct ibv_mw* mw; } ;
struct ibv_send_wr {TYPE_1__ bind_mw; int send_flags; int wr_id; int * next; int opcode; } ;
struct ibv_qp {int dummy; } ;
struct ibv_mw_bind {int bind_info; int send_flags; int wr_id; } ;
struct ibv_mw {int rkey; } ;


 int IBV_WR_BIND_MW ;
 int ibv_inc_rkey (int ) ;
 int mlx4_post_send (struct ibv_qp*,struct ibv_send_wr*,struct ibv_send_wr**) ;

int mlx4_bind_mw(struct ibv_qp *qp, struct ibv_mw *mw,
   struct ibv_mw_bind *mw_bind)
{
 struct ibv_send_wr *bad_wr = ((void*)0);
 struct ibv_send_wr wr = { };
 int ret;


 wr.opcode = IBV_WR_BIND_MW;
 wr.next = ((void*)0);

 wr.wr_id = mw_bind->wr_id;
 wr.send_flags = mw_bind->send_flags;

 wr.bind_mw.mw = mw;
 wr.bind_mw.rkey = ibv_inc_rkey(mw->rkey);
 wr.bind_mw.bind_info = mw_bind->bind_info;

 ret = mlx4_post_send(qp, &wr, &bad_wr);

 if (ret)
  return ret;


 mw->rkey = wr.bind_mw.rkey;

 return 0;
}
