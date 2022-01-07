
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_server_data {int dummy; } ;
struct radius_client {int pending_dac_disconnect_req; int pending_dac_coa_req; struct radius_client* shared_secret; int sessions; struct radius_client* next; } ;


 int os_free (struct radius_client*) ;
 int radius_msg_free (int ) ;
 int radius_server_free_sessions (struct radius_server_data*,int ) ;

__attribute__((used)) static void radius_server_free_clients(struct radius_server_data *data,
           struct radius_client *clients)
{
 struct radius_client *client, *prev;

 client = clients;
 while (client) {
  prev = client;
  client = client->next;

  radius_server_free_sessions(data, prev->sessions);
  os_free(prev->shared_secret);
  radius_msg_free(prev->pending_dac_coa_req);
  radius_msg_free(prev->pending_dac_disconnect_req);
  os_free(prev);
 }
}
