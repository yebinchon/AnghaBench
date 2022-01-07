
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gconfig {struct gconfig* lg_val; struct gconfig* lg_name; } ;
struct gconf {int dummy; } ;


 struct gconfig* LIST_FIRST (struct gconf*) ;
 int LIST_REMOVE (struct gconfig*,int ) ;
 int free (struct gconfig*) ;
 int lg_config ;

__attribute__((used)) static void
delete_config(struct gconf *gp)
{
 struct gconfig *cf;

 for (;;) {
  cf = LIST_FIRST(gp);
  if (cf == ((void*)0))
   return;
  LIST_REMOVE(cf, lg_config);
  free(cf->lg_name);
  free(cf->lg_val);
  free(cf);
 }
}
