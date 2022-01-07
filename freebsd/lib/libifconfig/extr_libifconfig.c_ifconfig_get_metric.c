
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_metric; int ifr_name; } ;
typedef int ifr ;
typedef int ifconfig_handle_t ;


 int AF_LOCAL ;
 int SIOCGIFMETRIC ;
 int ifconfig_ioctlwrap (int *,int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

int
ifconfig_get_metric(ifconfig_handle_t *h, const char *name, int *metric)
{
 struct ifreq ifr;

 memset(&ifr, 0, sizeof(ifr));
 (void)strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));

 if (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCGIFMETRIC, &ifr) == -1) {
  return (-1);
 }

 *metric = ifr.ifr_metric;
 return (0);
}
