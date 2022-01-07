
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int RB_MULTIPLE ;
 int RB_VERBOSE ;
 int boothowto ;
 int bootverbose ;

__attribute__((used)) static int
imx51_attach(platform_t plat)
{


 boothowto |= RB_VERBOSE|RB_MULTIPLE;
 bootverbose = 1;

 return (0);
}
