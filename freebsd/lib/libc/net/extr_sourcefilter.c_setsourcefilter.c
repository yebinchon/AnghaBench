
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct __msfilterreq {struct sockaddr_storage* msfr_srcs; int msfr_group; scalar_t__ msfr_nsrcs; scalar_t__ msfr_fmode; scalar_t__ msfr_ifindex; } ;
struct TYPE_10__ {int ss_family; int ss_len; } ;
struct TYPE_8__ {int sin6_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {TYPE_1__ sin_addr; } ;
struct TYPE_9__ {TYPE_5__ ss; TYPE_3__ sin6; TYPE_2__ sin; } ;
typedef TYPE_4__ sockunion_t ;
typedef int socklen_t ;
typedef int msfr ;




 int EAFNOSUPPORT ;
 int EINVAL ;
 int IN6_IS_ADDR_MULTICAST (int *) ;
 int IN_MULTICAST (int ) ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_MSFILTER ;
 int IP_MSFILTER ;
 scalar_t__ MCAST_EXCLUDE ;
 scalar_t__ MCAST_INCLUDE ;
 int _setsockopt (int,int,int,struct __msfilterreq*,int) ;
 int errno ;
 int memcpy (int *,TYPE_5__*,int ) ;
 int memset (struct __msfilterreq*,int ,int) ;
 int ntohl (int ) ;

int
setsourcefilter(int s, uint32_t interface, struct sockaddr *group,
    socklen_t grouplen, uint32_t fmode, uint32_t numsrc,
    struct sockaddr_storage *slist)
{
 struct __msfilterreq msfr;
 sockunion_t *psu;
 int level, optname;

 if (fmode != MCAST_INCLUDE && fmode != MCAST_EXCLUDE) {
  errno = EINVAL;
  return (-1);
 }

 psu = (sockunion_t *)group;
 switch (psu->ss.ss_family) {
 default:
  errno = EAFNOSUPPORT;
  return (-1);
 }

 memset(&msfr, 0, sizeof(msfr));
 msfr.msfr_ifindex = interface;
 msfr.msfr_fmode = fmode;
 msfr.msfr_nsrcs = numsrc;
 memcpy(&msfr.msfr_group, &psu->ss, psu->ss.ss_len);
 msfr.msfr_srcs = slist;

 return (_setsockopt(s, level, optname, &msfr, sizeof(msfr)));
}
