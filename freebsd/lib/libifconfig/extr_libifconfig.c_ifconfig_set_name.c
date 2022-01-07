
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ifreq {char* ifr_data; int ifr_name; } ;
typedef int ifr ;
struct TYPE_5__ {int errcode; int errtype; } ;
struct TYPE_6__ {TYPE_1__ error; } ;
typedef TYPE_2__ ifconfig_handle_t ;


 int AF_LOCAL ;
 int ENOMEM ;
 int OTHER ;
 int SIOCSIFNAME ;
 int free (char*) ;
 scalar_t__ ifconfig_ioctlwrap (TYPE_2__*,int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 char* strdup (char const*) ;
 int strlcpy (int ,char const*,int) ;

int
ifconfig_set_name(ifconfig_handle_t *h, const char *name, const char *newname)
{
 struct ifreq ifr;
 char *tmpname;

 memset(&ifr, 0, sizeof(ifr));
 tmpname = strdup(newname);
 if (tmpname == ((void*)0)) {
  h->error.errtype = OTHER;
  h->error.errcode = ENOMEM;
  return (-1);
 }

 (void)strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 ifr.ifr_data = tmpname;
 if (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCSIFNAME, &ifr) != 0) {
  free(tmpname);
  return (-1);
 }

 free(tmpname);
 return (0);
}
