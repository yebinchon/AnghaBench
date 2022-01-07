
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifreq {int ifr_mtu; int ifr_name; } ;
typedef int ifr ;
typedef int caddr_t ;


 int SIOCGIFMTU ;
 int bzero (struct ifreq*,int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int get_query_socket () ;
 int ioctl (int,int ,int ) ;
 int strlcpy (int ,char*,int) ;
 int warnx (char*,char*) ;

u_long
getifmtu(char *ifname)
{
 int s;
 struct ifreq ifr;

 s = get_query_socket();
 bzero(&ifr, sizeof(ifr));
 if (strlcpy(ifr.ifr_name, ifname, sizeof(ifr.ifr_name)) >=
     sizeof(ifr.ifr_name))
  errx(1, "getifmtu: strlcpy");
 if (ioctl(s, SIOCGIFMTU, (caddr_t)&ifr) == -1)



  err(1, "SIOCGIFMTU");

 if (ifr.ifr_mtu > 0)
  return (ifr.ifr_mtu);
 else {
  warnx("could not get mtu for %s, assuming 1500", ifname);
  return (1500);
 }
}
