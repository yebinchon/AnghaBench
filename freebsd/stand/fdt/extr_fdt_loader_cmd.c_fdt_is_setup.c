
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fdtp ;

int
fdt_is_setup(void)
{

 if (fdtp != ((void*)0))
  return (1);

 return (0);
}
