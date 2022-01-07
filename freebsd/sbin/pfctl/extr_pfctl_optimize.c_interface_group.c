
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifgroupreq {int ifgr_name; } ;
typedef int ifgr ;
typedef int caddr_t ;


 scalar_t__ ENOENT ;
 int IFNAMSIZ ;
 int SIOCGIFGMEMB ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int get_query_socket () ;
 int ioctl (int,int ,int ) ;
 int memset (struct ifgroupreq*,int ,int) ;
 int strlcpy (int ,char const*,int ) ;

int
interface_group(const char *ifname)
{
 int s;
 struct ifgroupreq ifgr;

 if (ifname == ((void*)0) || !ifname[0])
  return (0);

 s = get_query_socket();

 memset(&ifgr, 0, sizeof(ifgr));
 strlcpy(ifgr.ifgr_name, ifname, IFNAMSIZ);
 if (ioctl(s, SIOCGIFGMEMB, (caddr_t)&ifgr) == -1) {
  if (errno == ENOENT)
   return (0);
  else
   err(1, "SIOCGIFGMEMB");
 }

 return (1);
}
