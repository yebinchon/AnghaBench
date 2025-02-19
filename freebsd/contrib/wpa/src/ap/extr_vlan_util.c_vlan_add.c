
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link {int dummy; } ;
struct nl_sock {int dummy; } ;


 scalar_t__ IFNAMSIZ ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int NETLINK_ROUTE ;
 int NLM_F_CREATE ;
 int nl_connect (struct nl_sock*,int ) ;
 int nl_geterror (int) ;
 struct nl_sock* nl_socket_alloc () ;
 int nl_socket_free (struct nl_sock*) ;
 scalar_t__ os_strlen (char const*) ;
 int rtnl_link_add (struct nl_sock*,struct rtnl_link*,int ) ;
 struct rtnl_link* rtnl_link_alloc () ;
 int rtnl_link_get_ifindex (struct rtnl_link*) ;
 int rtnl_link_get_kernel (struct nl_sock*,int ,char const*,struct rtnl_link**) ;
 int rtnl_link_put (struct rtnl_link*) ;
 int rtnl_link_set_link (struct rtnl_link*,int) ;
 int rtnl_link_set_name (struct rtnl_link*,char const*) ;
 int rtnl_link_set_type (struct rtnl_link*,char*) ;
 int rtnl_link_vlan_set_id (struct rtnl_link*,int) ;
 int wpa_printf (int ,char*,...) ;

int vlan_add(const char *if_name, int vid, const char *vlan_if_name)
{
 int err, ret = -1;
 struct nl_sock *handle = ((void*)0);
 struct rtnl_link *rlink = ((void*)0);
 int if_idx = 0;

 wpa_printf(MSG_DEBUG, "VLAN: vlan_add(if_name=%s, vid=%d, "
     "vlan_if_name=%s)", if_name, vid, vlan_if_name);

 if ((os_strlen(if_name) + 1) > IFNAMSIZ) {
  wpa_printf(MSG_ERROR, "VLAN: Interface name too long: '%s'",
      if_name);
  return -1;
 }

 if ((os_strlen(vlan_if_name) + 1) > IFNAMSIZ) {
  wpa_printf(MSG_ERROR, "VLAN: Interface name too long: '%s'",
      vlan_if_name);
  return -1;
 }

 handle = nl_socket_alloc();
 if (!handle) {
  wpa_printf(MSG_ERROR, "VLAN: failed to open netlink socket");
  goto vlan_add_error;
 }

 err = nl_connect(handle, NETLINK_ROUTE);
 if (err < 0) {
  wpa_printf(MSG_ERROR, "VLAN: failed to connect to netlink: %s",
      nl_geterror(err));
  goto vlan_add_error;
 }

 err = rtnl_link_get_kernel(handle, 0, if_name, &rlink);
 if (err < 0) {

  wpa_printf(MSG_ERROR, "VLAN: interface %s does not exist",
      if_name);
  goto vlan_add_error;
 }
 if_idx = rtnl_link_get_ifindex(rlink);
 rtnl_link_put(rlink);
 rlink = ((void*)0);

 err = rtnl_link_get_kernel(handle, 0, vlan_if_name, &rlink);
 if (err >= 0) {

  rtnl_link_put(rlink);
  rlink = ((void*)0);
  wpa_printf(MSG_ERROR, "VLAN: interface %s already exists",
      vlan_if_name);
  ret = 1;
  goto vlan_add_error;
 }

 rlink = rtnl_link_alloc();
 if (!rlink) {
  wpa_printf(MSG_ERROR, "VLAN: failed to allocate new link");
  goto vlan_add_error;
 }

 err = rtnl_link_set_type(rlink, "vlan");
 if (err < 0) {
  wpa_printf(MSG_ERROR, "VLAN: failed to set link type: %s",
      nl_geterror(err));
  goto vlan_add_error;
 }

 rtnl_link_set_link(rlink, if_idx);
 rtnl_link_set_name(rlink, vlan_if_name);

 err = rtnl_link_vlan_set_id(rlink, vid);
 if (err < 0) {
  wpa_printf(MSG_ERROR, "VLAN: failed to set link vlan id: %s",
      nl_geterror(err));
  goto vlan_add_error;
 }

 err = rtnl_link_add(handle, rlink, NLM_F_CREATE);
 if (err < 0) {
  wpa_printf(MSG_ERROR, "VLAN: failed to create link %s for "
      "vlan %d on %s (%d): %s",
      vlan_if_name, vid, if_name, if_idx,
      nl_geterror(err));
  goto vlan_add_error;
 }

 ret = 0;

vlan_add_error:
 if (rlink)
  rtnl_link_put(rlink);
 if (handle)
  nl_socket_free(handle);
 return ret;
}
