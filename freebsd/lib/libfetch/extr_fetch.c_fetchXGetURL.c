
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_stat {int dummy; } ;
struct url {int dummy; } ;
typedef int FILE ;


 int fetchFreeURL (struct url*) ;
 struct url* fetchParseURL (char const*) ;
 int * fetchXGet (struct url*,struct url_stat*,char const*) ;

FILE *
fetchXGetURL(const char *URL, struct url_stat *us, const char *flags)
{
 struct url *u;
 FILE *f;

 if ((u = fetchParseURL(URL)) == ((void*)0))
  return (((void*)0));

 f = fetchXGet(u, us, flags);

 fetchFreeURL(u);
 return (f);
}
