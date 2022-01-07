
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;


 scalar_t__ ISREFCLOCKADR (int *) ;
 scalar_t__ SOCK_UNSPEC (int *) ;
 char const* refnumtoa (int *) ;
 int showhostnames ;
 char const* socktohost (int *) ;
 char const* stoa (int *) ;

const char *
nntohost(
 sockaddr_u *netnum
 )
{
 if (!showhostnames || SOCK_UNSPEC(netnum))
  return stoa(netnum);
 else if (ISREFCLOCKADR(netnum))
  return refnumtoa(netnum);
 else
  return socktohost(netnum);
}
