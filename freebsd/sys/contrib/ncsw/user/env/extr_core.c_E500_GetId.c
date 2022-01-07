
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int PCPU_GET (int ) ;
 int cpuid ;

uint32_t E500_GetId()
{
 return PCPU_GET(cpuid);
}
