
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int dummy; } ;
typedef int FILE ;


 int fetchFreeURL (struct url*) ;
 struct url* fetchParseURL (char const*) ;
 int * fetchPut (struct url*,char const*) ;

FILE *
fetchPutURL(const char *URL, const char *flags)
{
 struct url *u;
 FILE *f;

 if ((u = fetchParseURL(URL)) == ((void*)0))
  return (((void*)0));

 f = fetchPut(u, flags);

 fetchFreeURL(u);
 return (f);
}
