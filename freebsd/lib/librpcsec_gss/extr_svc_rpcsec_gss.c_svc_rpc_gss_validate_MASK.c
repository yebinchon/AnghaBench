#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct svc_rpc_gss_client {int /*<<< orphan*/  cl_state; int /*<<< orphan*/  cl_mech; int /*<<< orphan*/  cl_ctx; } ;
struct TYPE_6__ {int oa_length; int /*<<< orphan*/ * oa_base; } ;
struct opaque_auth {scalar_t__ oa_length; int /*<<< orphan*/  oa_base; int /*<<< orphan*/  oa_flavor; } ;
struct TYPE_7__ {TYPE_1__ cb_verf; struct opaque_auth cb_cred; scalar_t__ cb_proc; scalar_t__ cb_vers; scalar_t__ cb_prog; scalar_t__ cb_rpcvers; } ;
struct rpc_msg {TYPE_2__ rm_call; int /*<<< orphan*/  rm_direction; scalar_t__ rm_xid; } ;
typedef  int /*<<< orphan*/  rpchdr ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  gss_qop_t ;
struct TYPE_8__ {int length; int /*<<< orphan*/ * value; } ;
typedef  TYPE_3__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_STALE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool_t
FUNC8(struct svc_rpc_gss_client *client, struct rpc_msg *msg,
	gss_qop_t *qop)
{
	struct opaque_auth	*oa;
	gss_buffer_desc		 rpcbuf, checksum;
	OM_uint32		 maj_stat, min_stat;
	gss_qop_t		 qop_state;
	int32_t			 rpchdr[128 / sizeof(int32_t)];
	int32_t			*buf;

	FUNC4("in svc_rpc_gss_validate()");
	
	FUNC7(rpchdr, 0, sizeof(rpchdr));

	/* Reconstruct RPC header for signing (from xdr_callmsg). */
	buf = rpchdr;
	FUNC1(buf, msg->rm_xid);
	FUNC0(buf, msg->rm_direction);
	FUNC1(buf, msg->rm_call.cb_rpcvers);
	FUNC1(buf, msg->rm_call.cb_prog);
	FUNC1(buf, msg->rm_call.cb_vers);
	FUNC1(buf, msg->rm_call.cb_proc);
	oa = &msg->rm_call.cb_cred;
	FUNC0(buf, oa->oa_flavor);
	FUNC1(buf, oa->oa_length);
	if (oa->oa_length) {
		FUNC6((caddr_t)buf, oa->oa_base, oa->oa_length);
		buf += FUNC2(oa->oa_length) / sizeof(int32_t);
	}
	rpcbuf.value = rpchdr;
	rpcbuf.length = (u_char *)buf - (u_char *)rpchdr;

	checksum.value = msg->rm_call.cb_verf.oa_base;
	checksum.length = msg->rm_call.cb_verf.oa_length;
	
	maj_stat = FUNC3(&min_stat, client->cl_ctx, &rpcbuf, &checksum,
				  &qop_state);
	
	if (maj_stat != GSS_S_COMPLETE) {
		FUNC5("gss_verify_mic", client->cl_mech,
		    maj_stat, min_stat);
		client->cl_state = CLIENT_STALE;
		return (FALSE);
	}
	*qop = qop_state;
	return (TRUE);
}