
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ibv_sge {uintptr_t addr; int lkey; int length; } ;
struct TYPE_7__ {int remote_srqn; } ;
struct TYPE_8__ {TYPE_2__ xrc; } ;
struct ibv_send_wr {uintptr_t wr_id; int num_sge; int send_flags; TYPE_3__ qp_type; int opcode; struct ibv_sge* sg_list; int * next; } ;
struct TYPE_10__ {int num_clients; int num_tests; int * send_qp; TYPE_4__* rem_dest; TYPE_1__* mr; int size; scalar_t__ buf; } ;
struct TYPE_9__ {int pp_cnt; int srqn; } ;
struct TYPE_6__ {int lkey; } ;


 int IBV_SEND_SIGNALED ;
 int IBV_WR_SEND ;
 TYPE_5__ ctx ;
 int ibv_post_send (int ,struct ibv_send_wr*,struct ibv_send_wr**) ;

__attribute__((used)) static int pp_post_send(int index)
{
 struct ibv_sge sge;
 struct ibv_send_wr wr, *bad_wr;
 int qpi;

 sge.addr = (uintptr_t) ctx.buf;
 sge.length = ctx.size;
 sge.lkey = ctx.mr->lkey;

 wr.wr_id = (uintptr_t) index;
 wr.next = ((void*)0);
 wr.sg_list = &sge;
 wr.num_sge = 1;
 wr.opcode = IBV_WR_SEND;
 wr.qp_type.xrc.remote_srqn = ctx.rem_dest[index].srqn;

 qpi = (index + ctx.rem_dest[index].pp_cnt) % ctx.num_clients;
 wr.send_flags = (++ctx.rem_dest[index].pp_cnt >= ctx.num_tests) ?
   IBV_SEND_SIGNALED : 0;

 return ibv_post_send(ctx.send_qp[qpi], &wr, &bad_wr);
}
