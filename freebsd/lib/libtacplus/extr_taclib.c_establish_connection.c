
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tac_handle {scalar_t__ fd; int num_servers; int single_connect; size_t cur_server; TYPE_1__* servers; } ;
struct TYPE_2__ {int flags; } ;


 int TAC_SRVR_SINGLE_CONNECT ;
 scalar_t__ conn_server (struct tac_handle*) ;
 int generr (struct tac_handle*,char*) ;

__attribute__((used)) static int
establish_connection(struct tac_handle *h)
{
 int i;

 if (h->fd >= 0)
  return 0;
 if (h->num_servers == 0) {
  generr(h, "No TACACS+ servers specified");
  return -1;
 }





 for (i = 0; i < h->num_servers; i++) {
  if (conn_server(h) == 0) {
   h->single_connect = (h->servers[h->cur_server].flags &
       TAC_SRVR_SINGLE_CONNECT) != 0;
   return 0;
  }
  if (++h->cur_server >= h->num_servers)
   h->cur_server = 0;
 }

 return -1;
}
