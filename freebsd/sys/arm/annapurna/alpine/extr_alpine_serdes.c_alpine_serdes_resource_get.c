
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 size_t SERDES_NUM_GROUPS ;
 int * serdes_base ;
 scalar_t__* serdes_grp_offset ;

void *
alpine_serdes_resource_get(uint32_t group)
{
 void *base;

 base = ((void*)0);
 if (group >= SERDES_NUM_GROUPS)
  return (((void*)0));

 if (serdes_base != ((void*)0))
  base = (void *)((uintptr_t)serdes_base +
      serdes_grp_offset[group]);

 return (base);
}
