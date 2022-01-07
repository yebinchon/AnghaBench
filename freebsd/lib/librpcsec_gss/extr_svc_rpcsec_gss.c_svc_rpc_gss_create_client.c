
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rpc_gss_client_list {int dummy; } ;
struct svc_rpc_gss_client {size_t cl_id; scalar_t__ cl_expiration; int cl_locked; int cl_state; } ;


 size_t CLIENT_HASH_SIZE ;
 int CLIENT_NEW ;
 int FALSE ;
 int TAILQ_INSERT_HEAD (struct svc_rpc_gss_client_list*,struct svc_rpc_gss_client*,int ) ;
 int cl_alllink ;
 int cl_link ;
 int log_debug (char*) ;
 struct svc_rpc_gss_client* mem_alloc (int) ;
 int memset (struct svc_rpc_gss_client*,int ,int) ;
 int svc_rpc_gss_client_count ;
 struct svc_rpc_gss_client_list* svc_rpc_gss_client_hash ;
 struct svc_rpc_gss_client_list svc_rpc_gss_clients ;
 int svc_rpc_gss_next_clientid ;
 scalar_t__ time (int ) ;

__attribute__((used)) static struct svc_rpc_gss_client *
svc_rpc_gss_create_client(void)
{
 struct svc_rpc_gss_client *client;
 struct svc_rpc_gss_client_list *list;

 log_debug("in svc_rpc_gss_create_client()");

 client = mem_alloc(sizeof(struct svc_rpc_gss_client));
 memset(client, 0, sizeof(struct svc_rpc_gss_client));
 client->cl_id = svc_rpc_gss_next_clientid++;
 list = &svc_rpc_gss_client_hash[client->cl_id % CLIENT_HASH_SIZE];
 TAILQ_INSERT_HEAD(list, client, cl_link);
 TAILQ_INSERT_HEAD(&svc_rpc_gss_clients, client, cl_alllink);





 client->cl_state = CLIENT_NEW;
 client->cl_locked = FALSE;
 client->cl_expiration = time(0) + 5*60;
 svc_rpc_gss_client_count++;

 return (client);
}
