
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int M_NETCOMMSW ;
 int M_NOWAIT ;
 void* malloc (int ,int ,int ) ;

void *
XX_Malloc(uint32_t size)
{
 void *p = (malloc(size, M_NETCOMMSW, M_NOWAIT));

 return (p);
}
