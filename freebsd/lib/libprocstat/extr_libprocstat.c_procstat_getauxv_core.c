
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_core {int dummy; } ;
typedef int Elf_Auxinfo ;


 int PSC_TYPE_AUXV ;
 int * procstat_core_get (struct procstat_core*,int ,int *,size_t*) ;

__attribute__((used)) static Elf_Auxinfo *
procstat_getauxv_core(struct procstat_core *core, unsigned int *cntp)
{
 Elf_Auxinfo *auxv;
 size_t len;

 auxv = procstat_core_get(core, PSC_TYPE_AUXV, ((void*)0), &len);
 if (auxv == ((void*)0))
  return (((void*)0));
 *cntp = len / sizeof(Elf_Auxinfo);
 return (auxv);
}
