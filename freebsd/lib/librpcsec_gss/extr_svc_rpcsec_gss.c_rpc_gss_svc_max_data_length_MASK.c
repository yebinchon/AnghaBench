#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int service; } ;
struct svc_rpc_gss_client {int /*<<< orphan*/  cl_mech; int /*<<< orphan*/  cl_qop; int /*<<< orphan*/  cl_ctx; TYPE_1__ cl_rawcred; } ;
struct svc_req {struct svc_rpc_gss_client* rq_clntcred; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
#define  rpc_gss_svc_default 131 
#define  rpc_gss_svc_integrity 130 
#define  rpc_gss_svc_none 129 
#define  rpc_gss_svc_privacy 128 

int
FUNC2(struct svc_req *req, int max_tp_unit_len)
{
	struct svc_rpc_gss_client *client = req->rq_clntcred;
	int			want_conf;
	OM_uint32		max;
	OM_uint32		maj_stat, min_stat;
	int			result;

	switch (client->cl_rawcred.service) {
	case rpc_gss_svc_none:
		return (max_tp_unit_len);
		break;

	case rpc_gss_svc_default:
	case rpc_gss_svc_integrity:
		want_conf = FALSE;
		break;

	case rpc_gss_svc_privacy:
		want_conf = TRUE;
		break;

	default:
		return (0);
	}

	maj_stat = FUNC0(&min_stat, client->cl_ctx, want_conf,
	    client->cl_qop, max_tp_unit_len, &max);

	if (maj_stat == GSS_S_COMPLETE) {
		result = (int) max;
		if (result < 0)
			result = 0;
		return (result);
	} else {
		FUNC1("gss_wrap_size_limit", client->cl_mech,
		    maj_stat, min_stat);
		return (0);
	}
}