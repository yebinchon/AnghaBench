
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int dummy; } ;


 int init_qp_attr ;
 int perror (char*) ;
 int printf (char*) ;
 int rdma_accept (struct rdma_cm_id*,int *) ;
 int rdma_create_qp (struct rdma_cm_id*,int *,int *) ;
 int rdma_destroy_id (struct rdma_cm_id*) ;
 int rdma_reject (struct rdma_cm_id*,int *,int ) ;

__attribute__((used)) static void __req_handler(struct rdma_cm_id *id)
{
 int ret;

 ret = rdma_create_qp(id, ((void*)0), &init_qp_attr);
 if (ret) {
  perror("failure creating qp");
  goto err;
 }

 ret = rdma_accept(id, ((void*)0));
 if (ret) {
  perror("failure accepting");
  goto err;
 }
 return;

err:
 printf("failing connection request\n");
 rdma_reject(id, ((void*)0), 0);
 rdma_destroy_id(id);
 return;
}
