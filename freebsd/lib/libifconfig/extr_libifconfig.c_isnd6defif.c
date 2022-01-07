
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct in6_ndifreq {unsigned int ifindex; int ifname; } ;
typedef int ndifreq ;
struct TYPE_5__ {int errtype; } ;
struct TYPE_6__ {TYPE_1__ error; } ;
typedef TYPE_2__ ifconfig_handle_t ;


 int AF_INET6 ;
 int OK ;
 int SIOCGDEFIFACE_IN6 ;
 unsigned int if_nametoindex (int ) ;
 scalar_t__ ifconfig_ioctlwrap (TYPE_2__*,int ,int ,struct in6_ndifreq*) ;
 int memset (struct in6_ndifreq*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static bool
isnd6defif(ifconfig_handle_t *h, const char *name)
{
 struct in6_ndifreq ndifreq;
 unsigned int ifindex;

 memset(&ndifreq, 0, sizeof(ndifreq));
 strlcpy(ndifreq.ifname, name, sizeof(ndifreq.ifname));
 ifindex = if_nametoindex(ndifreq.ifname);
 if (ifconfig_ioctlwrap(h, AF_INET6, SIOCGDEFIFACE_IN6, &ndifreq) < 0) {
  return (0);
 }
 h->error.errtype = OK;
 return (ndifreq.ifindex == ifindex);
}
