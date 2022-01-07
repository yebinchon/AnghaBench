
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gprovider {int dummy; } ;
struct gmesh {int dummy; } ;


 struct gprovider* find_provider_by_name (struct gmesh*,char const*) ;
 char* geom_pp_attr (struct gmesh*,struct gprovider*,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *
find_geom_efimedia(struct gmesh *mesh, const char *dev)
{
 struct gprovider *pp;
 const char *efimedia;

 pp = find_provider_by_name(mesh, dev);
 if (pp == ((void*)0))
  return (((void*)0));
 efimedia = geom_pp_attr(mesh, pp, "efimedia");
 if (efimedia == ((void*)0))
  return (((void*)0));
 return strdup(efimedia);
}
