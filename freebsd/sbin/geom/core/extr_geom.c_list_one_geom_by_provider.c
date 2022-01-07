
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gmesh {int dummy; } ;
struct ggeom {TYPE_1__* lg_class; } ;
struct TYPE_2__ {char* lg_name; } ;


 int EXIT_FAILURE ;
 int errc (int ,int,char*) ;
 int errx (int ,char*,char const*) ;
 struct ggeom* find_geom_by_provider (struct gmesh*,char const*) ;
 int geom_gettree (struct gmesh*) ;
 int list_one_geom (struct ggeom*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
list_one_geom_by_provider(const char *provider_name)
{
 struct gmesh mesh;
 struct ggeom *gp;
 int error;

 error = geom_gettree(&mesh);
 if (error != 0)
  errc(EXIT_FAILURE, error, "Cannot get GEOM tree");

 gp = find_geom_by_provider(&mesh, provider_name);
 if (gp == ((void*)0))
  errx(EXIT_FAILURE, "Cannot find provider '%s'.", provider_name);

 printf("Geom class: %s\n", gp->lg_class->lg_name);
 list_one_geom(gp);
}
