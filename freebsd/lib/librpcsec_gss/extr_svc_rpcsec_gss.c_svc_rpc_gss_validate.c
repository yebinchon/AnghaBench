
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct svc_rpc_gss_client {int cl_state; int cl_mech; int cl_ctx; } ;
struct TYPE_6__ {int oa_length; int * oa_base; } ;
struct opaque_auth {scalar_t__ oa_length; int oa_base; int oa_flavor; } ;
struct TYPE_7__ {TYPE_1__ cb_verf; struct opaque_auth cb_cred; scalar_t__ cb_proc; scalar_t__ cb_vers; scalar_t__ cb_prog; scalar_t__ cb_rpcvers; } ;
struct rpc_msg {TYPE_2__ rm_call; int rm_direction; scalar_t__ rm_xid; } ;
typedef int rpchdr ;
typedef int int32_t ;
typedef int gss_qop_t ;
struct TYPE_8__ {int length; int * value; } ;
typedef TYPE_3__ gss_buffer_desc ;
typedef int caddr_t ;
typedef int bool_t ;
typedef scalar_t__ OM_uint32 ;


 int CLIENT_STALE ;
 int FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 int IXDR_PUT_ENUM (int *,int ) ;
 int IXDR_PUT_LONG (int *,scalar_t__) ;
 int RNDUP (scalar_t__) ;
 int TRUE ;
 scalar_t__ gss_verify_mic (scalar_t__*,int ,TYPE_3__*,TYPE_3__*,int *) ;
 int log_debug (char*) ;
 int log_status (char*,int ,scalar_t__,scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static bool_t
svc_rpc_gss_validate(struct svc_rpc_gss_client *client, struct rpc_msg *msg,
 gss_qop_t *qop)
{
 struct opaque_auth *oa;
 gss_buffer_desc rpcbuf, checksum;
 OM_uint32 maj_stat, min_stat;
 gss_qop_t qop_state;
 int32_t rpchdr[128 / sizeof(int32_t)];
 int32_t *buf;

 log_debug("in svc_rpc_gss_validate()");

 memset(rpchdr, 0, sizeof(rpchdr));


 buf = rpchdr;
 IXDR_PUT_LONG(buf, msg->rm_xid);
 IXDR_PUT_ENUM(buf, msg->rm_direction);
 IXDR_PUT_LONG(buf, msg->rm_call.cb_rpcvers);
 IXDR_PUT_LONG(buf, msg->rm_call.cb_prog);
 IXDR_PUT_LONG(buf, msg->rm_call.cb_vers);
 IXDR_PUT_LONG(buf, msg->rm_call.cb_proc);
 oa = &msg->rm_call.cb_cred;
 IXDR_PUT_ENUM(buf, oa->oa_flavor);
 IXDR_PUT_LONG(buf, oa->oa_length);
 if (oa->oa_length) {
  memcpy((caddr_t)buf, oa->oa_base, oa->oa_length);
  buf += RNDUP(oa->oa_length) / sizeof(int32_t);
 }
 rpcbuf.value = rpchdr;
 rpcbuf.length = (u_char *)buf - (u_char *)rpchdr;

 checksum.value = msg->rm_call.cb_verf.oa_base;
 checksum.length = msg->rm_call.cb_verf.oa_length;

 maj_stat = gss_verify_mic(&min_stat, client->cl_ctx, &rpcbuf, &checksum,
      &qop_state);

 if (maj_stat != GSS_S_COMPLETE) {
  log_status("gss_verify_mic", client->cl_mech,
      maj_stat, min_stat);
  client->cl_state = CLIENT_STALE;
  return (FALSE);
 }
 *qop = qop_state;
 return (TRUE);
}
