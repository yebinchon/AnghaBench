
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct densities {int dens; int bpi; int bpmm; } ;


 struct densities* dens ;

int
mt_density_bp(int density_num, int bpi)
{
 struct densities *sd;

 for (sd = dens; sd->dens; sd++)
  if (sd->dens == density_num)
   break;
 if (sd->dens == 0)
  return (0);
 if (bpi)
  return (sd->bpi);
 else
  return (sd->bpmm);
}
