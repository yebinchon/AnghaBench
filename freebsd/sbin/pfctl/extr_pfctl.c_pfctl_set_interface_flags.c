
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfioc_iface {int pfiio_flags; int pfiio_name; } ;
struct pfctl {int opts; int dev; } ;
struct node_host {char* ifname; struct node_host* next; } ;
typedef int pi ;


 int DIOCCLRIFFLAG ;
 int DIOCSETIFFLAG ;
 int PFCTL_FLAG_OPTION ;
 int PF_OPT_NOACTION ;
 int bzero (struct pfioc_iface*,int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 struct node_host* ifa_grouplookup (char*,int ) ;
 scalar_t__ ioctl (int ,int ,struct pfioc_iface*) ;
 int loadopt ;
 int pfctl_check_skip_ifaces (char*) ;
 int strlcpy (int ,char*,int) ;

int
pfctl_set_interface_flags(struct pfctl *pf, char *ifname, int flags, int how)
{
 struct pfioc_iface pi;
 struct node_host *h = ((void*)0), *n = ((void*)0);

 if ((loadopt & PFCTL_FLAG_OPTION) == 0)
  return (0);

 bzero(&pi, sizeof(pi));

 pi.pfiio_flags = flags;



 h = ifa_grouplookup(ifname, 0);
 for (n = h; n != ((void*)0); n = n->next)
  pfctl_set_interface_flags(pf, n->ifname, flags, how);

 if (strlcpy(pi.pfiio_name, ifname, sizeof(pi.pfiio_name)) >=
     sizeof(pi.pfiio_name))
  errx(1, "pfctl_set_interface_flags: strlcpy");

 if ((pf->opts & PF_OPT_NOACTION) == 0) {
  if (how == 0) {
   if (ioctl(pf->dev, DIOCCLRIFFLAG, &pi))
    err(1, "DIOCCLRIFFLAG");
  } else {
   if (ioctl(pf->dev, DIOCSETIFFLAG, &pi))
    err(1, "DIOCSETIFFLAG");
   pfctl_check_skip_ifaces(ifname);
  }
 }
 return (0);
}
