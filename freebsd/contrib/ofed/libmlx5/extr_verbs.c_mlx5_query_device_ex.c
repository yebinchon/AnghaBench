
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int caps; } ;
struct TYPE_5__ {int rx_hash_function; int rx_hash_fields_mask; } ;
struct mlx5_query_device_ex_resp {int cqe_comp_caps; scalar_t__ support_multi_pkt_send_wqe; TYPE_3__ packet_pacing_caps; TYPE_2__ rss_caps; int tso_caps; int ibv_resp; int ibv_cmd; } ;
struct mlx5_query_device_ex {int cqe_comp_caps; scalar_t__ support_multi_pkt_send_wqe; TYPE_3__ packet_pacing_caps; TYPE_2__ rss_caps; int tso_caps; int ibv_resp; int ibv_cmd; } ;
struct mlx5_context {int cmds_supp_uhw; int cqe_comp_caps; int vendor_cap_flags; } ;
struct ibv_query_device_ex_input {int dummy; } ;
struct ibv_device_attr {int fw_ver; } ;
struct TYPE_4__ {int rx_hash_function; int rx_hash_fields_mask; } ;
struct ibv_device_attr_ex {struct ibv_device_attr orig_attr; int packet_pacing_caps; TYPE_1__ rss_caps; int tso_caps; } ;
struct ibv_context {int dummy; } ;
typedef int resp ;
typedef int cmd ;


 int MLX5_USER_CMDS_SUPP_UHW_QUERY_DEVICE ;
 int MLX5_VENDOR_CAP_FLAGS_MPW ;
 int ibv_cmd_query_device_ex (struct ibv_context*,struct ibv_query_device_ex_input const*,struct ibv_device_attr_ex*,size_t,int*,int *,int,int,int *,int,int) ;
 int memset (struct mlx5_query_device_ex_resp*,int ,int) ;
 int snprintf (int ,int,char*,unsigned int,unsigned int,unsigned int) ;
 struct mlx5_context* to_mctx (struct ibv_context*) ;

int mlx5_query_device_ex(struct ibv_context *context,
    const struct ibv_query_device_ex_input *input,
    struct ibv_device_attr_ex *attr,
    size_t attr_size)
{
 struct mlx5_context *mctx = to_mctx(context);
 struct mlx5_query_device_ex_resp resp;
 struct mlx5_query_device_ex cmd;
 struct ibv_device_attr *a;
 uint64_t raw_fw_ver;
 unsigned sub_minor;
 unsigned major;
 unsigned minor;
 int err;
 int cmd_supp_uhw = mctx->cmds_supp_uhw &
  MLX5_USER_CMDS_SUPP_UHW_QUERY_DEVICE;

 memset(&cmd, 0, sizeof(cmd));
 memset(&resp, 0, sizeof(resp));
 err = ibv_cmd_query_device_ex(context, input, attr, attr_size,
          &raw_fw_ver,
          &cmd.ibv_cmd, sizeof(cmd.ibv_cmd), sizeof(cmd),
          &resp.ibv_resp, sizeof(resp.ibv_resp),
          cmd_supp_uhw ? sizeof(resp) : sizeof(resp.ibv_resp));
 if (err)
  return err;

 attr->tso_caps = resp.tso_caps;
 attr->rss_caps.rx_hash_fields_mask = resp.rss_caps.rx_hash_fields_mask;
 attr->rss_caps.rx_hash_function = resp.rss_caps.rx_hash_function;
 attr->packet_pacing_caps = resp.packet_pacing_caps.caps;

 if (resp.support_multi_pkt_send_wqe)
  mctx->vendor_cap_flags |= MLX5_VENDOR_CAP_FLAGS_MPW;

 mctx->cqe_comp_caps = resp.cqe_comp_caps;

 major = (raw_fw_ver >> 32) & 0xffff;
 minor = (raw_fw_ver >> 16) & 0xffff;
 sub_minor = raw_fw_ver & 0xffff;
 a = &attr->orig_attr;
 snprintf(a->fw_ver, sizeof(a->fw_ver), "%d.%d.%04d",
   major, minor, sub_minor);

 return 0;
}
