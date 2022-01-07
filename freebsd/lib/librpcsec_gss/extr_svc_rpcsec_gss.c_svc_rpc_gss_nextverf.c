
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct TYPE_10__ {scalar_t__ length; scalar_t__ value; } ;
struct svc_rpc_gss_client {TYPE_4__ cl_verf; int cl_state; int cl_mech; int cl_qop; int cl_ctx; } ;
struct svc_req {TYPE_2__* rq_xprt; } ;
typedef int nseq ;
struct TYPE_9__ {int length; int * value; } ;
typedef TYPE_3__ gss_buffer_desc ;
typedef scalar_t__ caddr_t ;
typedef int bool_t ;
struct TYPE_7__ {scalar_t__ oa_length; scalar_t__ oa_base; int oa_flavor; } ;
struct TYPE_8__ {TYPE_1__ xp_verf; } ;
typedef scalar_t__ OM_uint32 ;


 int CLIENT_STALE ;
 int FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 int RPCSEC_GSS ;
 int TRUE ;
 scalar_t__ gss_get_mic (scalar_t__*,int ,int ,TYPE_3__*,TYPE_4__*) ;
 int gss_release_buffer (scalar_t__*,TYPE_4__*) ;
 int htonl (scalar_t__) ;
 int log_debug (char*) ;
 int log_status (char*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool_t
svc_rpc_gss_nextverf(struct svc_rpc_gss_client *client,
    struct svc_req *rqst, u_int seq)
{
 gss_buffer_desc signbuf;
 OM_uint32 maj_stat, min_stat;
 uint32_t nseq;

 log_debug("in svc_rpc_gss_nextverf()");

 nseq = htonl(seq);
 signbuf.value = &nseq;
 signbuf.length = sizeof(nseq);

 if (client->cl_verf.value)
  gss_release_buffer(&min_stat, &client->cl_verf);

 maj_stat = gss_get_mic(&min_stat, client->cl_ctx, client->cl_qop,
     &signbuf, &client->cl_verf);

 if (maj_stat != GSS_S_COMPLETE) {
  log_status("gss_get_mic", client->cl_mech, maj_stat, min_stat);
  client->cl_state = CLIENT_STALE;
  return (FALSE);
 }
 rqst->rq_xprt->xp_verf.oa_flavor = RPCSEC_GSS;
 rqst->rq_xprt->xp_verf.oa_base = (caddr_t)client->cl_verf.value;
 rqst->rq_xprt->xp_verf.oa_length = (u_int)client->cl_verf.length;

 return (TRUE);
}
