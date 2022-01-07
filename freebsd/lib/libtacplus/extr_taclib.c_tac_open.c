
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int fd; char* errmsg; int srvr_data; int srvr_msg; int * srvr_avs; int * avs; int user_msg; int data; int rem_addr; int port; int user; scalar_t__ cur_server; scalar_t__ num_servers; } ;


 int MAXAVPAIRS ;
 int init_clnt_str (int *) ;
 int init_srvr_str (int *) ;
 scalar_t__ malloc (int) ;
 int srandomdev () ;

struct tac_handle *
tac_open(void)
{
 int i;
 struct tac_handle *h;

 h = (struct tac_handle *)malloc(sizeof(struct tac_handle));
 if (h != ((void*)0)) {
  h->fd = -1;
  h->num_servers = 0;
  h->cur_server = 0;
  h->errmsg[0] = '\0';
  init_clnt_str(&h->user);
  init_clnt_str(&h->port);
  init_clnt_str(&h->rem_addr);
  init_clnt_str(&h->data);
  init_clnt_str(&h->user_msg);
  for (i=0; i<MAXAVPAIRS; i++) {
   init_clnt_str(&(h->avs[i]));
   init_srvr_str(&(h->srvr_avs[i]));
  }
  init_srvr_str(&h->srvr_msg);
  init_srvr_str(&h->srvr_data);
  srandomdev();
 }
 return h;
}
