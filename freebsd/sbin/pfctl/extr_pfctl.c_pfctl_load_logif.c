
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfioc_if {int ifname; } ;
struct pfctl {int dev; } ;
typedef int pi ;


 int DIOCSETSTATUSIF ;
 scalar_t__ ioctl (int ,int ,struct pfioc_if*) ;
 int memset (struct pfioc_if*,int ,int) ;
 int strlcpy (int ,char*,int) ;
 int warnx (char*) ;

int
pfctl_load_logif(struct pfctl *pf, char *ifname)
{
 struct pfioc_if pi;

 memset(&pi, 0, sizeof(pi));
 if (ifname && strlcpy(pi.ifname, ifname,
     sizeof(pi.ifname)) >= sizeof(pi.ifname)) {
  warnx("pfctl_load_logif: strlcpy");
  return (1);
 }
 if (ioctl(pf->dev, DIOCSETSTATUSIF, &pi)) {
  warnx("DIOCSETSTATUSIF");
  return (1);
 }
 return (0);
}
