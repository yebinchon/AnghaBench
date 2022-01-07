
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;


 scalar_t__ IS_IPV4 (int const*) ;
 scalar_t__ IS_IPV6 (int const*) ;
 int NSRCADR (int const*) ;
 scalar_t__ S_ADDR6_EQ (int const*,int *) ;
 int in6addr_any ;

__attribute__((used)) static int
is_wildcard_addr(
 const sockaddr_u *psau
 )
{
 if (IS_IPV4(psau) && !NSRCADR(psau))
  return 1;






 return 0;
}
