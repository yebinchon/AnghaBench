
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int reg ;
typedef int phandle_t ;
typedef int cell_t ;


 int OF_getprop (int ,char*,int**,int) ;
 int OF_instance_to_package (int ) ;
 int acells ;
 int memory ;
 int scells ;

uint64_t
memsize(void)
{
 phandle_t memoryp;
 cell_t reg[24];
 int i, sz;
 uint64_t memsz;

 memsz = 0;
 memoryp = OF_instance_to_package(memory);

 sz = OF_getprop(memoryp, "reg", &reg, sizeof(reg));
 sz /= sizeof(reg[0]);

 for (i = 0; i < sz; i += (acells + scells)) {
  if (scells > 1)
   memsz += (uint64_t)reg[i + acells] << 32;
  memsz += reg[i + acells + scells - 1];
 }

 return (memsz);
}
