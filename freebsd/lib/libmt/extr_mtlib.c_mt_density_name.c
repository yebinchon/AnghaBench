
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct densities {int dens; char const* name; } ;


 struct densities* dens ;

const char *
mt_density_name(int density_num)
{
 struct densities *sd;


 if (density_num == 0)
  return ("default");
 if (density_num == 0x7f)
  return ("same");

 for (sd = dens; sd->dens != 0; sd++)
  if (sd->dens == density_num)
   break;
 if (sd->dens == 0)
  return ("UNKNOWN");
 return (sd->name);
}
