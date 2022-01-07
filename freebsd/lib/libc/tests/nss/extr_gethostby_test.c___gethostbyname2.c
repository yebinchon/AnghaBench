
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;


 int errno ;
 struct hostent* gethostbyname2 (char const*,int) ;
 struct hostent* getipnodebyname (char const*,int,int ,int*) ;
 int ipnode_flags ;
 scalar_t__ use_ipnode_functions ;

__attribute__((used)) static struct hostent *
__gethostbyname2(const char *name, int af)
{
 struct hostent *he;
 int error;

 if (use_ipnode_functions) {
  error = 0;
  he = getipnodebyname(name, af, ipnode_flags, &error);
  if (he == ((void*)0))
   errno = error;
 } else
  he = gethostbyname2(name, af);

 return (he);
}
