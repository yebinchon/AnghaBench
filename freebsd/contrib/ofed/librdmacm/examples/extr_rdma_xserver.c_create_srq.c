
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int max_wr; int max_sge; scalar_t__ srq_limit; } ;
struct ibv_srq_init_attr {TYPE_2__* srq_context; TYPE_1__ attr; } ;
struct TYPE_5__ {scalar_t__ srq; } ;


 int htobe32 (int ) ;
 int ibv_get_srq_num (scalar_t__,int *) ;
 TYPE_2__* id ;
 int perror (char*) ;
 int rdma_create_srq (TYPE_2__*,int *,struct ibv_srq_init_attr*) ;
 int srqn ;

__attribute__((used)) static int create_srq(void)
{
 struct ibv_srq_init_attr attr;
 int ret;
 uint32_t tmp_srqn;

 attr.attr.max_wr = 1;
 attr.attr.max_sge = 1;
 attr.attr.srq_limit = 0;
 attr.srq_context = id;

 ret = rdma_create_srq(id, ((void*)0), &attr);
 if (ret)
  perror("rdma_create_srq:");

 if (id->srq) {
  ibv_get_srq_num(id->srq, &tmp_srqn);
  srqn = htobe32(tmp_srqn);
 }
 return ret;
}
