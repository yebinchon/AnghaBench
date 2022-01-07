
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ibv_srq_1_0 {int real_srq; TYPE_3__* context; } ;
struct ibv_recv_wr_1_0 {struct ibv_recv_wr_1_0* next; int num_sge; int sg_list; int wr_id; } ;
struct ibv_recv_wr {struct ibv_recv_wr* next; int num_sge; int sg_list; int wr_id; } ;
struct TYPE_6__ {TYPE_2__* real_context; } ;
struct TYPE_4__ {int (* post_srq_recv ) (int ,struct ibv_recv_wr*,struct ibv_recv_wr**) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;


 struct ibv_recv_wr* alloca (int) ;
 int stub1 (int ,struct ibv_recv_wr*,struct ibv_recv_wr**) ;

__attribute__((used)) static int post_srq_recv_wrapper_1_0(struct ibv_srq_1_0 *srq, struct ibv_recv_wr_1_0 *wr,
     struct ibv_recv_wr_1_0 **bad_wr)
{
 struct ibv_recv_wr_1_0 *w;
 struct ibv_recv_wr *real_wr, *head_wr = ((void*)0), *tail_wr = ((void*)0), *real_bad_wr;
 int ret;

 for (w = wr; w; w = w->next) {
  real_wr = alloca(sizeof *real_wr);
  real_wr->wr_id = w->wr_id;
  real_wr->sg_list = w->sg_list;
  real_wr->num_sge = w->num_sge;
  real_wr->next = ((void*)0);
  if (tail_wr)
   tail_wr->next = real_wr;
  else
   head_wr = real_wr;

  tail_wr = real_wr;
 }

 ret = srq->context->real_context->ops.post_srq_recv(srq->real_srq, head_wr,
           &real_bad_wr);

 if (ret) {
  for (real_wr = head_wr, w = wr;
       real_wr;
       real_wr = real_wr->next, w = w->next)
   if (real_wr == real_bad_wr) {
    *bad_wr = w;
    break;
   }
 }

 return ret;
}
