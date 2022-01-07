
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rdma_cm_id {TYPE_2__* verbs; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int transport_type; } ;


 int EINVAL ;
 int ERR (int ) ;


 int ucma_modify_qp_err (struct rdma_cm_id*) ;
 int ucma_modify_qp_sqd (struct rdma_cm_id*) ;

int ucma_shutdown(struct rdma_cm_id *id)
{
 switch (id->verbs->device->transport_type) {
 case 129:
  return ucma_modify_qp_err(id);
 case 128:
  return ucma_modify_qp_sqd(id);
 default:
  return ERR(EINVAL);
 }
}
