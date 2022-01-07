
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int intr_disable () ;

uint32_t
XX_DisableAllIntr(void)
{

 return (intr_disable());
}
