
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int XX_UDelay (int) ;

uint32_t
XX_Sleep(uint32_t msecs)
{

 XX_UDelay(1000 * msecs);
 return (0);
}
