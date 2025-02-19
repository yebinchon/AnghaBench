
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ena_com_admin_queue {int dummy; } ;
struct ena_com_dev {struct ena_com_admin_queue admin_queue; } ;
struct ena_admin_set_feat_resp {int dummy; } ;
struct TYPE_7__ {int mtu; } ;
struct TYPE_8__ {TYPE_3__ mtu; } ;
struct TYPE_6__ {int feature_id; } ;
struct TYPE_5__ {scalar_t__ flags; int opcode; } ;
struct ena_admin_set_feat_cmd {TYPE_4__ u; TYPE_2__ feat_common; TYPE_1__ aq_common_descriptor; } ;
struct ena_admin_aq_entry {int dummy; } ;
struct ena_admin_acq_entry {int dummy; } ;
typedef int resp ;
typedef int cmd ;


 int ENA_ADMIN_MTU ;
 int ENA_ADMIN_SET_FEATURE ;
 int ENA_COM_UNSUPPORTED ;
 int ena_com_check_supported_feature_id (struct ena_com_dev*,int ) ;
 int ena_com_execute_admin_command (struct ena_com_admin_queue*,struct ena_admin_aq_entry*,int,struct ena_admin_acq_entry*,int) ;
 int ena_trc_dbg (char*,int ) ;
 int ena_trc_err (char*,int,int) ;
 int memset (struct ena_admin_set_feat_cmd*,int,int) ;
 scalar_t__ unlikely (int) ;

int ena_com_set_dev_mtu(struct ena_com_dev *ena_dev, int mtu)
{
 struct ena_com_admin_queue *admin_queue;
 struct ena_admin_set_feat_cmd cmd;
 struct ena_admin_set_feat_resp resp;
 int ret;

 if (!ena_com_check_supported_feature_id(ena_dev, ENA_ADMIN_MTU)) {
  ena_trc_dbg("Feature %d isn't supported\n", ENA_ADMIN_MTU);
  return ENA_COM_UNSUPPORTED;
 }

 memset(&cmd, 0x0, sizeof(cmd));
 admin_queue = &ena_dev->admin_queue;

 cmd.aq_common_descriptor.opcode = ENA_ADMIN_SET_FEATURE;
 cmd.aq_common_descriptor.flags = 0;
 cmd.feat_common.feature_id = ENA_ADMIN_MTU;
 cmd.u.mtu.mtu = mtu;

 ret = ena_com_execute_admin_command(admin_queue,
         (struct ena_admin_aq_entry *)&cmd,
         sizeof(cmd),
         (struct ena_admin_acq_entry *)&resp,
         sizeof(resp));

 if (unlikely(ret))
  ena_trc_err("Failed to set mtu %d. error: %d\n", mtu, ret);

 return ret;
}
