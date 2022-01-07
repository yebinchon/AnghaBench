
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmesh {struct gident* lg_ident; } ;
struct gident {void const* lg_id; } ;



struct gident *
geom_lookupid(struct gmesh *gmp, const void *id)
{
 struct gident *gip;

 for (gip = gmp->lg_ident; gip->lg_id != ((void*)0); gip++)
  if (gip->lg_id == id)
   return (gip);
 return (((void*)0));
}
