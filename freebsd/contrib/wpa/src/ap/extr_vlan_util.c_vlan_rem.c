
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link {int dummy; } ;
struct nl_sock {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int NETLINK_ROUTE ;
 int nl_connect (struct nl_sock*,int ) ;
 int nl_geterror (int) ;
 struct nl_sock* nl_socket_alloc () ;
 int nl_socket_free (struct nl_sock*) ;
 int rtnl_link_delete (struct nl_sock*,struct rtnl_link*) ;
 int rtnl_link_get_kernel (struct nl_sock*,int ,char const*,struct rtnl_link**) ;
 int rtnl_link_put (struct rtnl_link*) ;
 int wpa_printf (int ,char*,...) ;

int vlan_rem(const char *if_name)
{
 int err, ret = -1;
 struct nl_sock *handle = ((void*)0);
 struct rtnl_link *rlink = ((void*)0);

 wpa_printf(MSG_DEBUG, "VLAN: vlan_rem(if_name=%s)", if_name);

 handle = nl_socket_alloc();
 if (!handle) {
  wpa_printf(MSG_ERROR, "VLAN: failed to open netlink socket");
  goto vlan_rem_error;
 }

 err = nl_connect(handle, NETLINK_ROUTE);
 if (err < 0) {
  wpa_printf(MSG_ERROR, "VLAN: failed to connect to netlink: %s",
      nl_geterror(err));
  goto vlan_rem_error;
 }

 err = rtnl_link_get_kernel(handle, 0, if_name, &rlink);
 if (err < 0) {

  wpa_printf(MSG_ERROR, "VLAN: interface %s does not exists",
      if_name);
  goto vlan_rem_error;
 }

 err = rtnl_link_delete(handle, rlink);
 if (err < 0) {
  wpa_printf(MSG_ERROR, "VLAN: failed to remove link %s: %s",
      if_name, nl_geterror(err));
  goto vlan_rem_error;
 }

 ret = 0;

vlan_rem_error:
 if (rlink)
  rtnl_link_put(rlink);
 if (handle)
  nl_socket_free(handle);
 return ret;
}
