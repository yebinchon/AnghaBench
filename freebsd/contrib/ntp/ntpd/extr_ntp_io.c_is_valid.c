
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int32 ;
struct TYPE_6__ {int sa_family; } ;
struct TYPE_7__ {TYPE_1__ sa; } ;
typedef TYPE_2__ sockaddr_u ;
typedef int isc_boolean_t ;




 scalar_t__ IN6_IFF_DEPARTED ;
 scalar_t__ IN6_IFF_DETACHED ;
 scalar_t__ IN6_IFF_TENTATIVE ;
 scalar_t__ IN_IFF_DETACHED ;
 scalar_t__ IN_IFF_TENTATIVE ;
 int ISC_FALSE ;
 int ISC_TRUE ;
 int check_flags (TYPE_2__*,char const*,scalar_t__) ;
 int check_flags6 (TYPE_2__*,char const*,scalar_t__) ;

__attribute__((used)) static isc_boolean_t
is_valid(
 sockaddr_u *psau,
 const char *name
 )
{
 u_int32 flags;

 flags = 0;
 switch (psau->sa.sa_family) {
 case 129:






  return check_flags(psau, name, flags) ? ISC_FALSE : ISC_TRUE;
 case 128:
  return check_flags6(psau, name, flags) ? ISC_FALSE : ISC_TRUE;
 default:
  return ISC_FALSE;
 }
}
