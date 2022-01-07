
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;
typedef int isc_boolean_t ;


 int DPRINTF (int,char*) ;
 int ISC_FALSE ;
 scalar_t__ IS_IPV6 (int *) ;
 int IS_MCAST (int *) ;
 int stoa (int *) ;

__attribute__((used)) static isc_boolean_t
addr_ismulticast(
 sockaddr_u *maddr
 )
{
 isc_boolean_t result;





 if (IS_IPV6(maddr))
  result = ISC_FALSE;
 else

  result = IS_MCAST(maddr);

 if (!result)
  DPRINTF(4, ("address %s is not multicast\n",
       stoa(maddr)));

 return result;
}
