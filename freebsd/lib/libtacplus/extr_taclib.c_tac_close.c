
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tac_handle {int fd; int num_servers; int * avs; int user_msg; int data; int rem_addr; int port; int user; TYPE_1__* servers; } ;
struct TYPE_2__ {struct tac_handle* secret; } ;


 int MAXAVPAIRS ;
 int close (int) ;
 int free (struct tac_handle*) ;
 int free_str (int *) ;
 int memset (struct tac_handle*,int ,int) ;
 int strlen (struct tac_handle*) ;

void
tac_close(struct tac_handle *h)
{
 int i, srv;

 if (h->fd != -1)
  close(h->fd);
 for (srv = 0; srv < h->num_servers; srv++) {
  memset(h->servers[srv].secret, 0,
      strlen(h->servers[srv].secret));
  free(h->servers[srv].secret);
 }
 free_str(&h->user);
 free_str(&h->port);
 free_str(&h->rem_addr);
 free_str(&h->data);
 free_str(&h->user_msg);
 for (i=0; i<MAXAVPAIRS; i++)
  free_str(&(h->avs[i]));


 memset(h, 0, sizeof(struct tac_handle));
 free(h);
}
