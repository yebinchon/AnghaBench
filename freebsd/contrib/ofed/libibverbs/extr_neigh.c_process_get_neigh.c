
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmsg {int rtm_dst_len; int rtm_family; } ;
struct nl_msg {int dummy; } ;
struct get_neigh_handler {scalar_t__ oif; int sock; int dst; } ;
typedef int rmsg ;


 int ENOMEM ;
 int NLMSG_ALIGNTO ;
 int NL_CB_CUSTOM ;
 int NL_CB_VALID ;
 int RTA_DST ;
 int RTA_OIF ;
 int RTM_GETROUTE ;
 int get_route_cb ;
 int nl_addr_get_family (int ) ;
 int nl_addr_get_prefixlen (int ) ;
 int nl_recvmsgs_default (int ) ;
 int nl_send_auto_complete (int ,struct nl_msg*) ;
 int nl_socket_modify_cb (int ,int ,int ,int *,struct get_neigh_handler*) ;
 int nla_put_addr (struct nl_msg*,int ,int ) ;
 int nla_put_u32 (struct nl_msg*,int ,scalar_t__) ;
 struct nl_msg* nlmsg_alloc_simple (int ,int ) ;
 int nlmsg_append (struct nl_msg*,struct rtmsg*,int,int ) ;
 int nlmsg_free (struct nl_msg*) ;

int process_get_neigh(struct get_neigh_handler *neigh_handler)
{
 struct nl_msg *m;
 struct rtmsg rmsg = {
  .rtm_family = nl_addr_get_family(neigh_handler->dst),
  .rtm_dst_len = nl_addr_get_prefixlen(neigh_handler->dst),
 };
 int err;

 m = nlmsg_alloc_simple(RTM_GETROUTE, 0);

 if (m == ((void*)0))
  return -ENOMEM;

 nlmsg_append(m, &rmsg, sizeof(rmsg), NLMSG_ALIGNTO);

 nla_put_addr(m, RTA_DST, neigh_handler->dst);

 if (neigh_handler->oif > 0)
  nla_put_u32(m, RTA_OIF, neigh_handler->oif);

 err = nl_send_auto_complete(neigh_handler->sock, m);
 nlmsg_free(m);
 if (err < 0)
  return err;

 nl_socket_modify_cb(neigh_handler->sock, NL_CB_VALID,
       NL_CB_CUSTOM, &get_route_cb, neigh_handler);

 err = nl_recvmsgs_default(neigh_handler->sock);

 return err;
}
