
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_msg {int dummy; } ;
struct get_neigh_handler {int dummy; } ;


 int ENOMSG ;
 int NL_OK ;
 int errno ;
 int get_neigh_cb_event ;
 scalar_t__ nl_msg_parse (struct nl_msg*,int *,struct get_neigh_handler*) ;

__attribute__((used)) static int get_neigh_cb(struct nl_msg *msg, void *arg)
{
 struct get_neigh_handler *neigh_handler =
  (struct get_neigh_handler *)arg;

 if (nl_msg_parse(msg, &get_neigh_cb_event, neigh_handler) < 0)
  errno = ENOMSG;

 return NL_OK;
}
