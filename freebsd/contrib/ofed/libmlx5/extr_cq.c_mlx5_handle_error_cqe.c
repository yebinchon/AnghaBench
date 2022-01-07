
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_err_cqe {int syndrome; } ;
typedef enum ibv_wc_status { ____Placeholder_ibv_wc_status } ibv_wc_status ;


 int IBV_WC_BAD_RESP_ERR ;
 int IBV_WC_GENERAL_ERR ;
 int IBV_WC_LOC_ACCESS_ERR ;
 int IBV_WC_LOC_LEN_ERR ;
 int IBV_WC_LOC_PROT_ERR ;
 int IBV_WC_LOC_QP_OP_ERR ;
 int IBV_WC_MW_BIND_ERR ;
 int IBV_WC_REM_ABORT_ERR ;
 int IBV_WC_REM_ACCESS_ERR ;
 int IBV_WC_REM_INV_REQ_ERR ;
 int IBV_WC_REM_OP_ERR ;
 int IBV_WC_RETRY_EXC_ERR ;
 int IBV_WC_RNR_RETRY_EXC_ERR ;
 int IBV_WC_WR_FLUSH_ERR ;
__attribute__((used)) static enum ibv_wc_status mlx5_handle_error_cqe(struct mlx5_err_cqe *cqe)
{
 switch (cqe->syndrome) {
 case 138:
  return IBV_WC_LOC_LEN_ERR;
 case 136:
  return IBV_WC_LOC_QP_OP_ERR;
 case 137:
  return IBV_WC_LOC_PROT_ERR;
 case 128:
  return IBV_WC_WR_FLUSH_ERR;
 case 135:
  return IBV_WC_MW_BIND_ERR;
 case 140:
  return IBV_WC_BAD_RESP_ERR;
 case 139:
  return IBV_WC_LOC_ACCESS_ERR;
 case 132:
  return IBV_WC_REM_INV_REQ_ERR;
 case 133:
  return IBV_WC_REM_ACCESS_ERR;
 case 131:
  return IBV_WC_REM_OP_ERR;
 case 129:
  return IBV_WC_RETRY_EXC_ERR;
 case 130:
  return IBV_WC_RNR_RETRY_EXC_ERR;
 case 134:
  return IBV_WC_REM_ABORT_ERR;
 default:
  return IBV_WC_GENERAL_ERR;
 }
}
