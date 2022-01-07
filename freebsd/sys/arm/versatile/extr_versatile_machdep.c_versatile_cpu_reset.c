
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int printf (char*) ;

__attribute__((used)) static void
versatile_cpu_reset(platform_t plat)
{
 printf("cpu_reset\n");
 while (1);
}
