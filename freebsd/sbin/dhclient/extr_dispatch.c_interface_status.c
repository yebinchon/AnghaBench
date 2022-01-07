
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interface_info {char* name; int rfdesc; int noifmedia; } ;
struct ifreq {int ifr_flags; int ifm_status; int ifm_active; int ifm_name; int ifr_name; } ;
struct ifmediareq {int ifr_flags; int ifm_status; int ifm_active; int ifm_name; int ifr_name; } ;
typedef int ifr ;
typedef int ifmr ;
typedef struct ifreq* caddr_t ;


 scalar_t__ EINVAL ;
 int IFF_RUNNING ;
 int IFF_UP ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;


 int IFM_NMASK ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int SIOCGIFFLAGS ;
 int SIOCGIFMEDIA ;
 int cap_syslog (int ,int ,char*,char*) ;
 int capsyslog ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int strlcpy (int ,char*,int) ;

int
interface_status(struct interface_info *ifinfo)
{
 char *ifname = ifinfo->name;
 int ifsock = ifinfo->rfdesc;
 struct ifreq ifr;
 struct ifmediareq ifmr;


 memset(&ifr, 0, sizeof(ifr));
 strlcpy(ifr.ifr_name, ifname, sizeof(ifr.ifr_name));
 if (ioctl(ifsock, SIOCGIFFLAGS, &ifr) < 0) {
  cap_syslog(capsyslog, LOG_ERR, "ioctl(SIOCGIFFLAGS) on %s: %m",
      ifname);
  goto inactive;
 }





 if ((ifr.ifr_flags & (IFF_UP|IFF_RUNNING)) != (IFF_UP|IFF_RUNNING))
  goto inactive;


 if (ifinfo->noifmedia)
  goto active;
 memset(&ifmr, 0, sizeof(ifmr));
 strlcpy(ifmr.ifm_name, ifname, sizeof(ifmr.ifm_name));
 if (ioctl(ifsock, SIOCGIFMEDIA, (caddr_t)&ifmr) < 0) {
  if (errno != EINVAL) {
   cap_syslog(capsyslog, LOG_DEBUG,
       "ioctl(SIOCGIFMEDIA) on %s: %m", ifname);
   ifinfo->noifmedia = 1;
   goto active;
  }




  ifinfo->noifmedia = 1;
  goto active;
 }
 if (ifmr.ifm_status & IFM_AVALID) {
  switch (ifmr.ifm_active & IFM_NMASK) {
  case 129:
  case 128:
   if (ifmr.ifm_status & IFM_ACTIVE)
    goto active;
   else
    goto inactive;
   break;
  default:
   goto inactive;
  }
 }
inactive:
 return (0);
active:
 return (1);
}
