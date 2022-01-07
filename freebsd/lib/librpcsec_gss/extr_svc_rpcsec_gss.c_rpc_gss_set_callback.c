
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rpc_gss_callback {int cb_callback; } ;
typedef int rpc_gss_callback_t ;
typedef int bool_t ;


 int ENOMEM ;
 int FALSE ;
 int RPC_GSS_ER_SYSTEMERROR ;
 int SLIST_INSERT_HEAD (int *,struct svc_rpc_gss_callback*,int ) ;
 int TRUE ;
 int _rpc_gss_set_error (int ,int ) ;
 int cb_link ;
 struct svc_rpc_gss_callback* mem_alloc (int) ;
 int svc_rpc_gss_callbacks ;

bool_t
rpc_gss_set_callback(rpc_gss_callback_t *cb)
{
 struct svc_rpc_gss_callback *scb;

 scb = mem_alloc(sizeof(struct svc_rpc_gss_callback));
 if (!scb) {
  _rpc_gss_set_error(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
  return (FALSE);
 }
 scb->cb_callback = *cb;
 SLIST_INSERT_HEAD(&svc_rpc_gss_callbacks, scb, cb_link);

 return (TRUE);
}
