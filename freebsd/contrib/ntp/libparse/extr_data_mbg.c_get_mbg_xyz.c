
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * XYZ ;


 int IEEE_DOUBLE ;
 scalar_t__ IEEE_OK ;
 int L_CLR (int *) ;
 int XP ;
 int ZP ;
 scalar_t__ fetch_ieee754 (unsigned char**,int ,int *,int ) ;
 int mbg_double ;

void
get_mbg_xyz(
 unsigned char **buffpp,
 XYZ xyz
 )
{
  int i;

  for (i = XP; i <= ZP; i++)
    {
      if (fetch_ieee754(buffpp, IEEE_DOUBLE, &xyz[i], mbg_double) != IEEE_OK)
 {
   L_CLR(&xyz[i]);
 }
    }
}
