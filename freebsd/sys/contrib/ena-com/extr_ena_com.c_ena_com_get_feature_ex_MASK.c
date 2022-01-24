#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct ena_com_admin_queue {int dummy; } ;
struct ena_com_dev {struct ena_com_admin_queue admin_queue; } ;
struct ena_admin_get_feat_resp {int dummy; } ;
struct TYPE_6__ {int feature_id; int /*<<< orphan*/  feature_version; } ;
struct TYPE_5__ {scalar_t__ length; int /*<<< orphan*/  address; } ;
struct TYPE_4__ {scalar_t__ flags; int /*<<< orphan*/  opcode; } ;
struct ena_admin_get_feat_cmd {TYPE_3__ feat_common; TYPE_2__ control_buffer; TYPE_1__ aq_common_descriptor; } ;
struct ena_admin_aq_entry {int dummy; } ;
struct ena_admin_acq_entry {int dummy; } ;
typedef  int /*<<< orphan*/  get_cmd ;
typedef  enum ena_admin_aq_feature_id { ____Placeholder_ena_admin_aq_feature_id } ena_admin_aq_feature_id ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK ; 
 int /*<<< orphan*/  ENA_ADMIN_GET_FEATURE ; 
 int ENA_COM_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (struct ena_com_dev*,int) ; 
 int FUNC1 (struct ena_com_admin_queue*,struct ena_admin_aq_entry*,int,struct ena_admin_acq_entry*,int) ; 
 int FUNC2 (struct ena_com_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_admin_get_feat_cmd*,int,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ena_com_dev *ena_dev,
				  struct ena_admin_get_feat_resp *get_resp,
				  enum ena_admin_aq_feature_id feature_id,
				  dma_addr_t control_buf_dma_addr,
				  u32 control_buff_size,
				  u8 feature_ver)
{
	struct ena_com_admin_queue *admin_queue;
	struct ena_admin_get_feat_cmd get_cmd;
	int ret;

	if (!FUNC0(ena_dev, feature_id)) {
		FUNC3("Feature %d isn't supported\n", feature_id);
		return ENA_COM_UNSUPPORTED;
	}

	FUNC5(&get_cmd, 0x0, sizeof(get_cmd));
	admin_queue = &ena_dev->admin_queue;

	get_cmd.aq_common_descriptor.opcode = ENA_ADMIN_GET_FEATURE;

	if (control_buff_size)
		get_cmd.aq_common_descriptor.flags =
			ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK;
	else
		get_cmd.aq_common_descriptor.flags = 0;

	ret = FUNC2(ena_dev,
				   &get_cmd.control_buffer.address,
				   control_buf_dma_addr);
	if (FUNC6(ret)) {
		FUNC4("memory address set failed\n");
		return ret;
	}

	get_cmd.control_buffer.length = control_buff_size;
	get_cmd.feat_common.feature_version = feature_ver;
	get_cmd.feat_common.feature_id = feature_id;

	ret = FUNC1(admin_queue,
					    (struct ena_admin_aq_entry *)
					    &get_cmd,
					    sizeof(get_cmd),
					    (struct ena_admin_acq_entry *)
					    get_resp,
					    sizeof(*get_resp));

	if (FUNC6(ret))
		FUNC4("Failed to submit get_feature command %d error: %d\n",
			    feature_id, ret);

	return ret;
}