
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ena_com_llq_info {int desc_stride_ctrl; int descs_num_before_header; int desc_list_entry_size_ctrl; int header_location_ctrl; } ;
struct ena_com_admin_queue {int dummy; } ;
struct ena_com_dev {struct ena_com_admin_queue admin_queue; struct ena_com_llq_info llq_info; } ;
struct ena_admin_set_feat_resp {int dummy; } ;
struct TYPE_7__ {int descriptors_stride_ctrl_enabled; int desc_num_before_header_enabled; int entry_size_ctrl_enabled; int header_location_ctrl_enabled; } ;
struct TYPE_8__ {TYPE_3__ llq; } ;
struct TYPE_6__ {int feature_id; } ;
struct TYPE_5__ {int opcode; } ;
struct ena_admin_set_feat_cmd {TYPE_4__ u; TYPE_2__ feat_common; TYPE_1__ aq_common_descriptor; } ;
struct ena_admin_aq_entry {int dummy; } ;
struct ena_admin_acq_entry {int dummy; } ;
typedef int resp ;
typedef int cmd ;


 int ENA_ADMIN_LLQ ;
 int ENA_ADMIN_SET_FEATURE ;
 int ena_com_execute_admin_command (struct ena_com_admin_queue*,struct ena_admin_aq_entry*,int,struct ena_admin_acq_entry*,int) ;
 int ena_trc_err (char*,int) ;
 int memset (struct ena_admin_set_feat_cmd*,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_com_set_llq(struct ena_com_dev *ena_dev)
{
 struct ena_com_admin_queue *admin_queue;
 struct ena_admin_set_feat_cmd cmd;
 struct ena_admin_set_feat_resp resp;
 struct ena_com_llq_info *llq_info = &ena_dev->llq_info;
 int ret;

 memset(&cmd, 0x0, sizeof(cmd));
 admin_queue = &ena_dev->admin_queue;

 cmd.aq_common_descriptor.opcode = ENA_ADMIN_SET_FEATURE;
 cmd.feat_common.feature_id = ENA_ADMIN_LLQ;

 cmd.u.llq.header_location_ctrl_enabled = llq_info->header_location_ctrl;
 cmd.u.llq.entry_size_ctrl_enabled = llq_info->desc_list_entry_size_ctrl;
 cmd.u.llq.desc_num_before_header_enabled = llq_info->descs_num_before_header;
 cmd.u.llq.descriptors_stride_ctrl_enabled = llq_info->desc_stride_ctrl;

 ret = ena_com_execute_admin_command(admin_queue,
         (struct ena_admin_aq_entry *)&cmd,
         sizeof(cmd),
         (struct ena_admin_acq_entry *)&resp,
         sizeof(resp));

 if (unlikely(ret))
  ena_trc_err("Failed to set LLQ configurations: %d\n", ret);

 return ret;
}
