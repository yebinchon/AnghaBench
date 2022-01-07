
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * buffer; scalar_t__ length; } ;
struct ifreq {TYPE_1__ ifr_buffer; int ifr_name; } ;
typedef int ifr ;
typedef int ifconfig_handle_t ;


 int AF_LOCAL ;
 int SIOCSIFDESCR ;
 scalar_t__ ifconfig_ioctlwrap (int *,int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

int
ifconfig_unset_description(ifconfig_handle_t *h, const char *name)
{
 struct ifreq ifr;

 memset(&ifr, 0, sizeof(ifr));
 (void)strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 ifr.ifr_buffer.length = 0;
 ifr.ifr_buffer.buffer = ((void*)0);

 if (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCSIFDESCR, &ifr) < 0) {
  return (-1);
 }
 return (0);
}
