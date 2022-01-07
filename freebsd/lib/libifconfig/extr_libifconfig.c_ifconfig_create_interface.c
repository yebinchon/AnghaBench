
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ifreq {int ifr_name; } ;
typedef int ifr ;
struct TYPE_5__ {int errcode; void* errtype; } ;
struct TYPE_6__ {TYPE_1__ error; } ;
typedef TYPE_2__ ifconfig_handle_t ;


 int AF_LOCAL ;
 int ENOMEM ;
 int ENOSYS ;
 void* OTHER ;
 int SIOCIFCREATE2 ;
 scalar_t__ ifconfig_ioctlwrap (TYPE_2__*,int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 char* strdup (int ) ;
 int strlcpy (int ,char const*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

int
ifconfig_create_interface(ifconfig_handle_t *h, const char *name, char **ifname)
{
 struct ifreq ifr;

 memset(&ifr, 0, sizeof(ifr));

 (void)strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));






 if ((strncmp(name, "wlan",
     strlen("wlan")) == 0) ||
     (strncmp(name, "vlan",
     strlen("vlan")) == 0) ||
     (strncmp(name, "vxlan",
     strlen("vxlan")) == 0)) {
  h->error.errtype = OTHER;
  h->error.errcode = ENOSYS;
  return (-1);
 }


 if (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCIFCREATE2, &ifr) < 0) {
  return (-1);
 }

 *ifname = strdup(ifr.ifr_name);
 if (ifname == ((void*)0)) {
  h->error.errtype = OTHER;
  h->error.errcode = ENOMEM;
  return (-1);
 }

 return (0);
}
