
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_msg {int dummy; } ;
struct get_neigh_handler {scalar_t__ oif; int * found_ll_addr; int src; int dst; } ;


 int EINVAL ;
 int ENOMSG ;
 int errno ;
 int get_route_cb_parser ;
 int nl_msg_parse (struct nl_msg*,int *,struct get_neigh_handler*) ;
 int * process_get_neigh_mac (struct get_neigh_handler*) ;

__attribute__((used)) static int get_route_cb(struct nl_msg *msg, void *arg)
{
 struct get_neigh_handler *neigh_handler =
  (struct get_neigh_handler *)arg;
 int err;

 err = nl_msg_parse(msg, &get_route_cb_parser, neigh_handler);
 if (err < 0) {
  errno = ENOMSG;
  return err;
 }

 if (!neigh_handler->dst || !neigh_handler->src ||
     neigh_handler->oif <= 0) {
  errno = EINVAL;
  return -1;
 }

 if (((void*)0) != neigh_handler->found_ll_addr)
  goto found;

 neigh_handler->found_ll_addr =
  process_get_neigh_mac(neigh_handler);

found:
 return neigh_handler->found_ll_addr ? 0 : -1;
}
