
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_ent {int dummy; } ;
struct url {int dummy; } ;


 int fetchFreeURL (struct url*) ;
 struct url_ent* fetchList (struct url*,char const*) ;
 struct url* fetchParseURL (char const*) ;

struct url_ent *
fetchListURL(const char *URL, const char *flags)
{
 struct url *u;
 struct url_ent *ue;

 if ((u = fetchParseURL(URL)) == ((void*)0))
  return (((void*)0));

 ue = fetchList(u, flags);

 fetchFreeURL(u);
 return (ue);
}
