
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLIENT_HASH_SIZE ;
 int RPCSEC_GSS ;
 int TAILQ_INIT (int *) ;
 scalar_t__ TRUE ;
 int svc_auth_reg (int ,int ) ;
 int svc_rpc_gss ;
 int * svc_rpc_gss_client_hash ;
 int svc_rpc_gss_clients ;
 scalar_t__ svc_rpc_gss_initialised ;

__attribute__((used)) static void
svc_rpc_gss_init(void)
{
 int i;

 if (!svc_rpc_gss_initialised) {
  for (i = 0; i < CLIENT_HASH_SIZE; i++)
   TAILQ_INIT(&svc_rpc_gss_client_hash[i]);
  TAILQ_INIT(&svc_rpc_gss_clients);
  svc_auth_reg(RPCSEC_GSS, svc_rpc_gss);
  svc_rpc_gss_initialised = TRUE;
 }
}
