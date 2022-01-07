
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32 ;
struct TYPE_5__ {int ifru_flags6; } ;
struct in6_ifreq {TYPE_1__ ifr_ifru; int ifr_name; int ifr_addr; } ;
struct TYPE_6__ {scalar_t__ sa_family; } ;
struct TYPE_7__ {int sa6; TYPE_2__ sa; } ;
typedef TYPE_3__ sockaddr_u ;
typedef int isc_boolean_t ;


 scalar_t__ AF_INET6 ;
 int ISC_FALSE ;
 int ISC_TRUE ;
 int SIOCGIFAFLAG_IN6 ;
 int SOCK_DGRAM ;
 int ZERO (struct in6_ifreq) ;
 int close (int) ;
 scalar_t__ ioctl (int,int ,struct in6_ifreq*) ;
 int memcpy (int *,int *,int) ;
 int socket (scalar_t__,int ,int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static isc_boolean_t
check_flags6(
 sockaddr_u *psau,
 const char *name,
 u_int32 flags6
 )
{
 return ISC_FALSE;
}
