
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ibv_qp_type { ____Placeholder_ibv_qp_type } ibv_qp_type ;


 int IBV_QPT_UD ;

__attribute__((used)) static int ucma_is_ud_qp(enum ibv_qp_type qp_type)
{
 return (qp_type == IBV_QPT_UD);
}
