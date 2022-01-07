
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_stat {int dummy; } ;
struct url {int dummy; } ;


 int fetchFreeURL (struct url*) ;
 struct url* fetchParseURL (char const*) ;
 int fetchStat (struct url*,struct url_stat*,char const*) ;

int
fetchStatURL(const char *URL, struct url_stat *us, const char *flags)
{
 struct url *u;
 int s;

 if ((u = fetchParseURL(URL)) == ((void*)0))
  return (-1);

 s = fetchStat(u, us, flags);

 fetchFreeURL(u);
 return (s);
}
