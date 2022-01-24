#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ibv_pd {TYPE_5__* context; int /*<<< orphan*/  handle; } ;
struct ibv_create_ah_resp {int /*<<< orphan*/  handle; } ;
struct TYPE_6__ {int /*<<< orphan*/  dgid; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sgid_index; int /*<<< orphan*/  flow_label; } ;
struct TYPE_7__ {TYPE_1__ grh; int /*<<< orphan*/  port_num; int /*<<< orphan*/  is_global; int /*<<< orphan*/  static_rate; int /*<<< orphan*/  src_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  dlid; } ;
struct ibv_create_ah {uintptr_t user_handle; TYPE_2__ attr; int /*<<< orphan*/  pd_handle; } ;
struct TYPE_8__ {int /*<<< orphan*/  raw; } ;
struct TYPE_9__ {TYPE_3__ dgid; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sgid_index; int /*<<< orphan*/  flow_label; } ;
struct ibv_ah_attr {TYPE_4__ grh; int /*<<< orphan*/  port_num; int /*<<< orphan*/  is_global; int /*<<< orphan*/  static_rate; int /*<<< orphan*/  src_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  dlid; } ;
struct ibv_ah {TYPE_5__* context; int /*<<< orphan*/  handle; } ;
struct TYPE_10__ {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_AH ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_create_ah*,int,int /*<<< orphan*/ ,struct ibv_create_ah_resp*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_create_ah_resp*,size_t) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ibv_create_ah*,int) ; 

int FUNC4(struct ibv_pd *pd, struct ibv_ah *ah,
		      struct ibv_ah_attr *attr,
		      struct ibv_create_ah_resp *resp,
		      size_t resp_size)
{
	struct ibv_create_ah      cmd;

	FUNC0(&cmd, sizeof cmd, CREATE_AH, resp, resp_size);
	cmd.user_handle            = (uintptr_t) ah;
	cmd.pd_handle              = pd->handle;
	cmd.attr.dlid              = attr->dlid;
	cmd.attr.sl                = attr->sl;
	cmd.attr.src_path_bits     = attr->src_path_bits;
	cmd.attr.static_rate       = attr->static_rate;
	cmd.attr.is_global         = attr->is_global;
	cmd.attr.port_num          = attr->port_num;
	cmd.attr.grh.flow_label    = attr->grh.flow_label;
	cmd.attr.grh.sgid_index    = attr->grh.sgid_index;
	cmd.attr.grh.hop_limit     = attr->grh.hop_limit;
	cmd.attr.grh.traffic_class = attr->grh.traffic_class;
	FUNC2(cmd.attr.grh.dgid, attr->grh.dgid.raw, 16);

	if (FUNC3(pd->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
		return errno;

	(void) FUNC1(resp, resp_size);

	ah->handle  = resp->handle;
	ah->context = pd->context;

	return 0;
}