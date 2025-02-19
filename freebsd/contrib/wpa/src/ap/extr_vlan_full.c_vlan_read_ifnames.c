
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtattr {scalar_t__ rta_type; int rta_len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct ifinfomsg {int ifi_flags; int ifi_family; int ifi_index; } ;
struct hostapd_data {int dummy; } ;
typedef int ifname ;


 int IFF_DORMANT ;
 int IFF_LOWER_UP ;
 int IFF_RUNNING ;
 int IFF_UP ;
 scalar_t__ IFLA_IFNAME ;
 int IFNAMSIZ ;
 int MSG_DEBUG ;
 int NLMSG_ALIGN (int) ;
 struct ifinfomsg* NLMSG_DATA (struct nlmsghdr*) ;
 int RTA_ALIGN (int) ;
 struct rtattr* RTA_NEXT (struct rtattr*,int) ;
 scalar_t__ RTA_OK (struct rtattr*,int) ;
 scalar_t__ if_nametoindex (char*) ;
 int os_memcpy (char*,char*,int) ;
 int os_memset (char*,int ,int) ;
 int vlan_dellink (char*,struct hostapd_data*) ;
 int vlan_newlink (char*,struct hostapd_data*) ;
 int wpa_printf (int ,char*,char*,int ,char*,int ,int,char*,char*,char*,char*) ;

__attribute__((used)) static void
vlan_read_ifnames(struct nlmsghdr *h, size_t len, int del,
    struct hostapd_data *hapd)
{
 struct ifinfomsg *ifi;
 int attrlen, nlmsg_len, rta_len;
 struct rtattr *attr;
 char ifname[IFNAMSIZ + 1];

 if (len < sizeof(*ifi))
  return;

 ifi = NLMSG_DATA(h);

 nlmsg_len = NLMSG_ALIGN(sizeof(struct ifinfomsg));

 attrlen = h->nlmsg_len - nlmsg_len;
 if (attrlen < 0)
  return;

 attr = (struct rtattr *) (((char *) ifi) + nlmsg_len);

 os_memset(ifname, 0, sizeof(ifname));
 rta_len = RTA_ALIGN(sizeof(struct rtattr));
 while (RTA_OK(attr, attrlen)) {
  if (attr->rta_type == IFLA_IFNAME) {
   int n = attr->rta_len - rta_len;
   if (n < 0)
    break;

   if ((size_t) n >= sizeof(ifname))
    n = sizeof(ifname) - 1;
   os_memcpy(ifname, ((char *) attr) + rta_len, n);

  }

  attr = RTA_NEXT(attr, attrlen);
 }

 if (!ifname[0])
  return;
 if (del && if_nametoindex(ifname)) {


  return;
 }

 wpa_printf(MSG_DEBUG,
     "VLAN: RTM_%sLINK: ifi_index=%d ifname=%s ifi_family=%d ifi_flags=0x%x (%s%s%s%s)",
     del ? "DEL" : "NEW",
     ifi->ifi_index, ifname, ifi->ifi_family, ifi->ifi_flags,
     (ifi->ifi_flags & IFF_UP) ? "[UP]" : "",
     (ifi->ifi_flags & IFF_RUNNING) ? "[RUNNING]" : "",
     (ifi->ifi_flags & IFF_LOWER_UP) ? "[LOWER_UP]" : "",
     (ifi->ifi_flags & IFF_DORMANT) ? "[DORMANT]" : "");

 if (del)
  vlan_dellink(ifname, hapd);
 else
  vlan_newlink(ifname, hapd);
}
