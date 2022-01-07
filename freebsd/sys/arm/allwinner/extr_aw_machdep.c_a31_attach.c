
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int ALLWINNERSOC_A31 ;
 int ALLWINNERSOC_SUN6I ;
 int soc_family ;
 int soc_type ;

__attribute__((used)) static int
a31_attach(platform_t plat)
{
 soc_type = ALLWINNERSOC_A31;
 soc_family = ALLWINNERSOC_SUN6I;

 return (0);
}
