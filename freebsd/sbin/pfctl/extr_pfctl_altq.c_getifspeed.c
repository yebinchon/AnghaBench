
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifreq {scalar_t__ ifr_data; int ifr_name; } ;
struct if_data {scalar_t__ ifi_baudrate; } ;
typedef int ifr ;
typedef scalar_t__ caddr_t ;


 int SIOCGIFDATA ;
 int bzero (struct ifreq*,int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int get_query_socket () ;
 int ioctl (int,int ,scalar_t__) ;
 int strlcpy (int ,char*,int) ;

u_int32_t
getifspeed(char *ifname)
{
 int s;
 struct ifreq ifr;
 struct if_data ifrdat;

 s = get_query_socket();
 bzero(&ifr, sizeof(ifr));
 if (strlcpy(ifr.ifr_name, ifname, sizeof(ifr.ifr_name)) >=
     sizeof(ifr.ifr_name))
  errx(1, "getifspeed: strlcpy");
 ifr.ifr_data = (caddr_t)&ifrdat;
 if (ioctl(s, SIOCGIFDATA, (caddr_t)&ifr) == -1)
  err(1, "SIOCGIFDATA");
 return ((u_int32_t)ifrdat.ifi_baudrate);
}
