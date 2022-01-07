
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int l_uf; int l_i; } ;
typedef TYPE_1__* LLA ;


 int ALT ;
 int IEEE_DOUBLE ;
 scalar_t__ IEEE_OK ;
 int LAT ;
 int L_CLR (TYPE_1__*) ;
 scalar_t__ fetch_ieee754 (unsigned char**,int ,TYPE_1__*,int ) ;
 int mbg_double ;
 int mfp_mul (int *,int *,int ,int ,int ,int ) ;
 int rad2deg_f ;
 int rad2deg_i ;

void
get_mbg_lla(
 unsigned char **buffpp,
 LLA lla
 )
{
  int i;

  for (i = LAT; i <= ALT; i++)
    {
      if (fetch_ieee754(buffpp, IEEE_DOUBLE, &lla[i], mbg_double) != IEEE_OK)
 {
   L_CLR(&lla[i]);
 }
      else
 if (i != ALT)
   {
     mfp_mul(&lla[i].l_i, &lla[i].l_uf, lla[i].l_i, lla[i].l_uf, rad2deg_i, rad2deg_f);
   }
    }
}
