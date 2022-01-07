
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ib {void* sib_sid_mask; void* sib_sid; int sib_family; } ;
struct sockaddr {int dummy; } ;
struct rdma_cm_id {int dummy; } ;


 int AF_IB ;
 int RDMA_IB_IP_PS_MASK ;
 int RDMA_IB_IP_PS_TCP ;
 int RDMA_PS_IB ;
 int af_ib_support ;
 void* htobe64 (int ) ;
 int memset (struct sockaddr_ib*,int ,int) ;
 int rdma_bind_addr (struct rdma_cm_id*,struct sockaddr*) ;
 int rdma_create_id (int *,struct rdma_cm_id**,int *,int ) ;
 int rdma_destroy_id (struct rdma_cm_id*) ;

__attribute__((used)) static void ucma_set_af_ib_support(void)
{
 struct rdma_cm_id *id;
 struct sockaddr_ib sib;
 int ret;

 ret = rdma_create_id(((void*)0), &id, ((void*)0), RDMA_PS_IB);
 if (ret)
  return;

 memset(&sib, 0, sizeof sib);
 sib.sib_family = AF_IB;
 sib.sib_sid = htobe64(RDMA_IB_IP_PS_TCP);
 sib.sib_sid_mask = htobe64(RDMA_IB_IP_PS_MASK);
 af_ib_support = 1;
 ret = rdma_bind_addr(id, (struct sockaddr *) &sib);
 af_ib_support = !ret;

 rdma_destroy_id(id);
}
