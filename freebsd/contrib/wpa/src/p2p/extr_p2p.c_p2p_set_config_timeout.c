
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct p2p_data {void* client_timeout; void* go_timeout; } ;



void p2p_set_config_timeout(struct p2p_data *p2p, u8 go_timeout,
       u8 client_timeout)
{
 if (p2p) {
  p2p->go_timeout = go_timeout;
  p2p->client_timeout = client_timeout;
 }
}
