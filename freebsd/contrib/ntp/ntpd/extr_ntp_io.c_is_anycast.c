
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;
typedef int isc_boolean_t ;


 int IN6_IFF_ANYCAST ;
 int ISC_FALSE ;
 int check_flags6 (int *,char const*,int ) ;

__attribute__((used)) static isc_boolean_t
is_anycast(
 sockaddr_u *psau,
 const char *name
 )
{



 return ISC_FALSE;

}
