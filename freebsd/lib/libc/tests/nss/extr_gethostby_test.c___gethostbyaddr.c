
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;
typedef int socklen_t ;


 int errno ;
 struct hostent* gethostbyaddr (void const*,int ,int) ;
 struct hostent* getipnodebyaddr (void const*,int ,int,int*) ;
 scalar_t__ use_ipnode_functions ;

__attribute__((used)) static struct hostent *
__gethostbyaddr(const void *addr, socklen_t len, int af)
{
 struct hostent *he;
 int error;

 if (use_ipnode_functions) {
  error = 0;
  he = getipnodebyaddr(addr, len, af, &error);
  if (he == ((void*)0))
   errno = error;
 } else
  he = gethostbyaddr(addr, len, af);

 return (he);
}
