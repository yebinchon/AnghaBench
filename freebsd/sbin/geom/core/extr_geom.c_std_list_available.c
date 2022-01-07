
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmesh {int dummy; } ;
struct gclass {int dummy; } ;


 int EXIT_FAILURE ;
 int errc (int ,int,char*) ;
 struct gclass* find_class (struct gmesh*,int ) ;
 int gclass_name ;
 int geom_deletetree (struct gmesh*) ;
 int geom_gettree (struct gmesh*) ;

__attribute__((used)) static int
std_list_available(void)
{
 struct gmesh mesh;
 struct gclass *classp;
 int error;

 error = geom_gettree(&mesh);
 if (error != 0)
  errc(EXIT_FAILURE, error, "Cannot get GEOM tree");
 classp = find_class(&mesh, gclass_name);
 geom_deletetree(&mesh);
 if (classp != ((void*)0))
  return (1);
 return (0);
}
