
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int ALLWINNERSOC_A20 ;
 int ALLWINNERSOC_SUN7I ;
 int soc_family ;
 int soc_type ;

__attribute__((used)) static int
a20_attach(platform_t plat)
{
 soc_type = ALLWINNERSOC_A20;
 soc_family = ALLWINNERSOC_SUN7I;

 return (0);
}
