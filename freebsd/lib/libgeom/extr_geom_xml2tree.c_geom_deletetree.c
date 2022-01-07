
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gprovider {struct gprovider* lg_mode; int lg_config; int lg_consumer; struct gprovider* lg_name; int lg_provider; int lg_geom; } ;
struct gmesh {int lg_class; struct gprovider* lg_ident; } ;
struct ggeom {struct ggeom* lg_mode; int lg_config; int lg_consumer; struct ggeom* lg_name; int lg_provider; int lg_geom; } ;
struct gconsumer {struct gconsumer* lg_mode; int lg_config; int lg_consumer; struct gconsumer* lg_name; int lg_provider; int lg_geom; } ;
struct gclass {struct gclass* lg_mode; int lg_config; int lg_consumer; struct gclass* lg_name; int lg_provider; int lg_geom; } ;


 struct gprovider* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct gprovider*,int ) ;
 int delete_config (int *) ;
 int free (struct gprovider*) ;
 int lg_class ;
 int lg_consumer ;
 int lg_geom ;
 int lg_provider ;

void
geom_deletetree(struct gmesh *gmp)
{
 struct gclass *cl;
 struct ggeom *ge;
 struct gprovider *pr;
 struct gconsumer *co;

 free(gmp->lg_ident);
 gmp->lg_ident = ((void*)0);
 for (;;) {
  cl = LIST_FIRST(&gmp->lg_class);
  if (cl == ((void*)0))
   break;
  LIST_REMOVE(cl, lg_class);
  delete_config(&cl->lg_config);
  if (cl->lg_name) free(cl->lg_name);
  for (;;) {
   ge = LIST_FIRST(&cl->lg_geom);
   if (ge == ((void*)0))
    break;
   LIST_REMOVE(ge, lg_geom);
   delete_config(&ge->lg_config);
   if (ge->lg_name) free(ge->lg_name);
   for (;;) {
    pr = LIST_FIRST(&ge->lg_provider);
    if (pr == ((void*)0))
     break;
    LIST_REMOVE(pr, lg_provider);
    delete_config(&pr->lg_config);
    if (pr->lg_name) free(pr->lg_name);
    if (pr->lg_mode) free(pr->lg_mode);
    free(pr);
   }
   for (;;) {
    co = LIST_FIRST(&ge->lg_consumer);
    if (co == ((void*)0))
     break;
    LIST_REMOVE(co, lg_consumer);
    delete_config(&co->lg_config);
    if (co->lg_mode) free(co->lg_mode);
    free(co);
   }
   free(ge);
  }
  free(cl);
 }
}
