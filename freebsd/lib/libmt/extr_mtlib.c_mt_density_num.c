
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct densities {int dens; int name; } ;


 struct densities* dens ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (int ,char const*,size_t) ;

int
mt_density_num(const char *density_name)
{
 struct densities *sd;
 size_t l = strlen(density_name);

 for (sd = dens; sd->dens; sd++)
  if (strncasecmp(sd->name, density_name, l) == 0)
   break;
 return (sd->dens);
}
