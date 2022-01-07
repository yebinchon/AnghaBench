
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in6_ndifreq {unsigned int ifindex; int ifname; } ;
typedef int ndifreq ;
typedef int caddr_t ;
struct TYPE_2__ {int ifr_name; } ;


 int SIOCGDEFIFACE_IN6 ;
 unsigned int if_nametoindex (int ) ;
 TYPE_1__ ifr ;
 int ioctl (int,int ,int ) ;
 int memset (struct in6_ndifreq*,int ,int) ;
 int strlcpy (int ,int ,int) ;
 int warn (char*) ;

__attribute__((used)) static int
isnd6defif(int s)
{
 struct in6_ndifreq ndifreq;
 unsigned int ifindex;
 int error;

 memset(&ndifreq, 0, sizeof(ndifreq));
 strlcpy(ndifreq.ifname, ifr.ifr_name, sizeof(ndifreq.ifname));

 ifindex = if_nametoindex(ndifreq.ifname);
 error = ioctl(s, SIOCGDEFIFACE_IN6, (caddr_t)&ndifreq);
 if (error) {
  warn("ioctl(SIOCGDEFIFACE_IN6)");
  return (error);
 }
 return (ndifreq.ifindex == ifindex);
}
