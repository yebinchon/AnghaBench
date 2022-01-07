
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_sge {uintptr_t addr; int lkey; int length; } ;
struct ibv_recv_wr {uintptr_t wr_id; int num_sge; struct ibv_sge* sg_list; int * next; } ;
struct TYPE_4__ {int srq; TYPE_1__* mr; int size; scalar_t__ buf; } ;
struct TYPE_3__ {int lkey; } ;


 TYPE_2__ ctx ;
 int fprintf (int ,char*) ;
 scalar_t__ ibv_post_srq_recv (int ,struct ibv_recv_wr*,struct ibv_recv_wr**) ;
 int stderr ;

__attribute__((used)) static int pp_post_recv(int cnt)
{
 struct ibv_sge sge;
 struct ibv_recv_wr wr, *bad_wr;

 sge.addr = (uintptr_t) ctx.buf;
 sge.length = ctx.size;
 sge.lkey = ctx.mr->lkey;

 wr.next = ((void*)0);
 wr.wr_id = (uintptr_t) &ctx;
 wr.sg_list = &sge;
 wr.num_sge = 1;

 while (cnt--) {
  if (ibv_post_srq_recv(ctx.srq, &wr, &bad_wr)) {
   fprintf(stderr, "Failed to post receive to SRQ\n");
   return 1;
  }
 }
 return 0;
}
