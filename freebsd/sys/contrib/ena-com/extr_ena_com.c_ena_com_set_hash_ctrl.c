
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ena_rss {int hash_ctrl_dma_addr; struct ena_admin_feature_rss_hash_control* hash_ctrl; } ;
struct ena_com_admin_queue {int dummy; } ;
struct ena_com_dev {struct ena_rss rss; struct ena_com_admin_queue admin_queue; } ;
struct ena_admin_set_feat_resp {int dummy; } ;
struct TYPE_10__ {int length; int address; } ;
struct TYPE_8__ {int enabled_input_sort; } ;
struct TYPE_9__ {TYPE_3__ flow_hash_input; } ;
struct TYPE_7__ {int feature_id; } ;
struct TYPE_6__ {int flags; int opcode; } ;
struct ena_admin_set_feat_cmd {TYPE_5__ control_buffer; TYPE_4__ u; TYPE_2__ feat_common; TYPE_1__ aq_common_descriptor; } ;
struct ena_admin_feature_rss_hash_control {int dummy; } ;
struct ena_admin_aq_entry {int dummy; } ;
struct ena_admin_acq_entry {int dummy; } ;
typedef int resp ;
typedef int cmd ;


 int ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK ;
 int ENA_ADMIN_FEATURE_RSS_FLOW_HASH_INPUT_L3_SORT_MASK ;
 int ENA_ADMIN_FEATURE_RSS_FLOW_HASH_INPUT_L4_SORT_MASK ;
 int ENA_ADMIN_RSS_HASH_INPUT ;
 int ENA_ADMIN_SET_FEATURE ;
 int ENA_COM_UNSUPPORTED ;
 int ena_com_check_supported_feature_id (struct ena_com_dev*,int ) ;
 int ena_com_execute_admin_command (struct ena_com_admin_queue*,struct ena_admin_aq_entry*,int,struct ena_admin_acq_entry*,int) ;
 int ena_com_mem_addr_set (struct ena_com_dev*,int *,int ) ;
 int ena_trc_dbg (char*,int ) ;
 int ena_trc_err (char*,...) ;
 int memset (struct ena_admin_set_feat_cmd*,int,int) ;
 scalar_t__ unlikely (int) ;

int ena_com_set_hash_ctrl(struct ena_com_dev *ena_dev)
{
 struct ena_com_admin_queue *admin_queue = &ena_dev->admin_queue;
 struct ena_rss *rss = &ena_dev->rss;
 struct ena_admin_feature_rss_hash_control *hash_ctrl = rss->hash_ctrl;
 struct ena_admin_set_feat_cmd cmd;
 struct ena_admin_set_feat_resp resp;
 int ret;

 if (!ena_com_check_supported_feature_id(ena_dev,
      ENA_ADMIN_RSS_HASH_INPUT)) {
  ena_trc_dbg("Feature %d isn't supported\n",
       ENA_ADMIN_RSS_HASH_INPUT);
  return ENA_COM_UNSUPPORTED;
 }

 memset(&cmd, 0x0, sizeof(cmd));

 cmd.aq_common_descriptor.opcode = ENA_ADMIN_SET_FEATURE;
 cmd.aq_common_descriptor.flags =
  ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK;
 cmd.feat_common.feature_id = ENA_ADMIN_RSS_HASH_INPUT;
 cmd.u.flow_hash_input.enabled_input_sort =
  ENA_ADMIN_FEATURE_RSS_FLOW_HASH_INPUT_L3_SORT_MASK |
  ENA_ADMIN_FEATURE_RSS_FLOW_HASH_INPUT_L4_SORT_MASK;

 ret = ena_com_mem_addr_set(ena_dev,
       &cmd.control_buffer.address,
       rss->hash_ctrl_dma_addr);
 if (unlikely(ret)) {
  ena_trc_err("memory address set failed\n");
  return ret;
 }
 cmd.control_buffer.length = sizeof(*hash_ctrl);

 ret = ena_com_execute_admin_command(admin_queue,
         (struct ena_admin_aq_entry *)&cmd,
         sizeof(cmd),
         (struct ena_admin_acq_entry *)&resp,
         sizeof(resp));
 if (unlikely(ret))
  ena_trc_err("Failed to set hash input. error: %d\n", ret);

 return ret;
}
