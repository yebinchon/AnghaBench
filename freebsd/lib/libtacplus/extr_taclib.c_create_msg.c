
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_msg {int type; scalar_t__ flags; int version; } ;
struct tac_handle {int * avs; int user_msg; int data; int rem_addr; int port; int user; struct tac_msg request; scalar_t__ last_seq_no; } ;


 int MAXAVPAIRS ;
 int free_str (int *) ;
 int protocol_version (int,int,int) ;

__attribute__((used)) static void
create_msg(struct tac_handle *h, int msg_type, int var, int type)
{
 struct tac_msg *msg;
 int i;

 h->last_seq_no = 0;

 msg = &h->request;
 msg->type = msg_type;
 msg->version = protocol_version(msg_type, var, type);
 msg->flags = 0;

 free_str(&h->user);
 free_str(&h->port);
 free_str(&h->rem_addr);
 free_str(&h->data);
 free_str(&h->user_msg);

 for (i=0; i<MAXAVPAIRS; i++)
  free_str(&(h->avs[i]));
}
