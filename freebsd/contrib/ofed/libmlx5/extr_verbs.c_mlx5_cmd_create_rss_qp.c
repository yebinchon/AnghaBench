
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_qp {int rss_qp; int verbs_qp; } ;
struct mlx5_create_qp_resp_ex {int ibv_resp; } ;
struct mlx5_create_qp_ex_rss {int rx_key_len; int ibv_cmd; int rx_hash_key; int rx_hash_function; int rx_hash_fields_mask; } ;
struct TYPE_2__ {int rx_hash_key_len; int rx_hash_key; int rx_hash_function; int rx_hash_fields_mask; } ;
struct ibv_qp_init_attr_ex {TYPE_1__ rx_hash_conf; } ;
struct ibv_context {int dummy; } ;
typedef int resp ;
typedef int cmd_ex_rss ;


 int EINVAL ;
 int errno ;
 int ibv_cmd_create_qp_ex2 (struct ibv_context*,int *,int,struct ibv_qp_init_attr_ex*,int *,int,int,int *,int,int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int mlx5_cmd_create_rss_qp(struct ibv_context *context,
     struct ibv_qp_init_attr_ex *attr,
     struct mlx5_qp *qp)
{
 struct mlx5_create_qp_ex_rss cmd_ex_rss = {};
 struct mlx5_create_qp_resp_ex resp = {};
 int ret;

 if (attr->rx_hash_conf.rx_hash_key_len > sizeof(cmd_ex_rss.rx_hash_key)) {
  errno = EINVAL;
  return errno;
 }

 cmd_ex_rss.rx_hash_fields_mask = attr->rx_hash_conf.rx_hash_fields_mask;
 cmd_ex_rss.rx_hash_function = attr->rx_hash_conf.rx_hash_function;
 cmd_ex_rss.rx_key_len = attr->rx_hash_conf.rx_hash_key_len;
 memcpy(cmd_ex_rss.rx_hash_key, attr->rx_hash_conf.rx_hash_key,
   attr->rx_hash_conf.rx_hash_key_len);

 ret = ibv_cmd_create_qp_ex2(context, &qp->verbs_qp,
         sizeof(qp->verbs_qp), attr,
         &cmd_ex_rss.ibv_cmd, sizeof(cmd_ex_rss.ibv_cmd),
         sizeof(cmd_ex_rss), &resp.ibv_resp,
         sizeof(resp.ibv_resp), sizeof(resp));
 if (ret)
  return ret;

 qp->rss_qp = 1;
 return 0;
}
