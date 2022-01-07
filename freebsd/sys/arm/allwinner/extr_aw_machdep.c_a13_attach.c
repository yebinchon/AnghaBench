
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int ALLWINNERSOC_A13 ;
 int ALLWINNERSOC_SUN5I ;
 int soc_family ;
 int soc_type ;

__attribute__((used)) static int
a13_attach(platform_t plat)
{
 soc_type = ALLWINNERSOC_A13;
 soc_family = ALLWINNERSOC_SUN5I;
 return (0);
}
