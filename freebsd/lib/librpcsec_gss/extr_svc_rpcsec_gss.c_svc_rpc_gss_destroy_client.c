
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rpc_gss_client_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {struct svc_rpc_gss_client* client_principal; } ;
struct svc_rpc_gss_client {int len; size_t cl_id; TYPE_2__ cl_verf; TYPE_1__ cl_rawcred; int cl_cname; int cl_ctx; } ;
typedef int OM_uint32 ;


 size_t CLIENT_HASH_SIZE ;
 int GSS_C_NO_BUFFER ;
 int TAILQ_REMOVE (struct svc_rpc_gss_client_list*,struct svc_rpc_gss_client*,int ) ;
 int cl_alllink ;
 int cl_link ;
 int gss_delete_sec_context (int *,int *,int ) ;
 int gss_release_buffer (int *,TYPE_2__*) ;
 int gss_release_name (int *,int *) ;
 int log_debug (char*) ;
 int mem_free (struct svc_rpc_gss_client*,int) ;
 int svc_rpc_gss_client_count ;
 struct svc_rpc_gss_client_list* svc_rpc_gss_client_hash ;
 struct svc_rpc_gss_client_list svc_rpc_gss_clients ;

__attribute__((used)) static void
svc_rpc_gss_destroy_client(struct svc_rpc_gss_client *client)
{
 struct svc_rpc_gss_client_list *list;
 OM_uint32 min_stat;

 log_debug("in svc_rpc_gss_destroy_client()");

 if (client->cl_ctx)
  gss_delete_sec_context(&min_stat,
      &client->cl_ctx, GSS_C_NO_BUFFER);

 if (client->cl_cname)
  gss_release_name(&min_stat, &client->cl_cname);

 if (client->cl_rawcred.client_principal)
  mem_free(client->cl_rawcred.client_principal,
      sizeof(*client->cl_rawcred.client_principal)
      + client->cl_rawcred.client_principal->len);

 if (client->cl_verf.value)
  gss_release_buffer(&min_stat, &client->cl_verf);

 list = &svc_rpc_gss_client_hash[client->cl_id % CLIENT_HASH_SIZE];
 TAILQ_REMOVE(list, client, cl_link);
 TAILQ_REMOVE(&svc_rpc_gss_clients, client, cl_alllink);
 svc_rpc_gss_client_count--;
 mem_free(client, sizeof(*client));
}
