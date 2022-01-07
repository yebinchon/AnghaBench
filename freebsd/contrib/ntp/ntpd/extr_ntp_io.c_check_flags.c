
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32 ;
struct ifreq {int ifr_addrflags; int ifr_name; int ifr_addr; } ;
struct TYPE_5__ {scalar_t__ sa_family; } ;
struct TYPE_4__ {TYPE_2__ sa; } ;
typedef TYPE_1__ sockaddr_u ;
typedef int isc_boolean_t ;


 scalar_t__ AF_INET ;
 int ISC_FALSE ;
 int ISC_TRUE ;
 int SIOCGIFAFLAG_IN ;
 int SOCK_DGRAM ;
 int ZERO (struct ifreq) ;
 int close (int) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 int memcpy (int *,TYPE_2__*,int) ;
 int socket (scalar_t__,int ,int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static isc_boolean_t
check_flags(
 sockaddr_u *psau,
 const char *name,
 u_int32 flags
 )
{
 return ISC_FALSE;
}
