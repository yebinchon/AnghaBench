
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmediareq {int ifm_status; int ifm_active; int ifm_name; } ;
typedef int ifmr ;
typedef int caddr_t ;


 int AF_INET ;
 scalar_t__ EINVAL ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;


 int IFM_NMASK ;
 int LOG_DEBUG ;
 int SIOCGIFMEDIA ;
 int SOCK_DGRAM ;
 int cap_syslog (int ,int ,char*,char*) ;
 int capsyslog ;
 int close (int) ;
 scalar_t__ errno ;
 int error (char*) ;
 int ioctl (int,int ,int ) ;
 int memset (struct ifmediareq*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char*,int) ;

int
interface_link_status(char *ifname)
{
 struct ifmediareq ifmr;
 int sock;

 if ((sock = socket(AF_INET, SOCK_DGRAM, 0)) == -1)
  error("Can't create socket");

 memset(&ifmr, 0, sizeof(ifmr));
 strlcpy(ifmr.ifm_name, ifname, sizeof(ifmr.ifm_name));
 if (ioctl(sock, SIOCGIFMEDIA, (caddr_t)&ifmr) == -1) {

  if (errno != EINVAL)
   cap_syslog(capsyslog, LOG_DEBUG,
       "ioctl(SIOCGIFMEDIA) on %s: %m", ifname);
  close(sock);
  return (1);
 }
 close(sock);

 if (ifmr.ifm_status & IFM_AVALID) {
  switch (ifmr.ifm_active & IFM_NMASK) {
  case 129:
  case 128:
   if (ifmr.ifm_status & IFM_ACTIVE)
    return (1);
   else
    return (0);
  }
 }
 return (1);
}
