
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_3__ {scalar_t__ r_offset; scalar_t__ r_addend; int r_info; } ;
typedef TYPE_1__ Elf_Rela ;
typedef int Elf_Addr ;


 int ELF_R_TYPE (int ) ;

 int cpuid_count (int,int ,int*) ;
 int do_cpuid (int,int*) ;
 int stub1 (int,int,int,int) ;

__attribute__((used)) static void
crt1_handle_rela(const Elf_Rela *r)
{
 Elf_Addr *ptr, *where, target;
 u_int p[4];
 uint32_t cpu_feature, cpu_feature2;
 uint32_t cpu_stdext_feature, cpu_stdext_feature2;

 do_cpuid(1, p);
 cpu_feature = p[3];
 cpu_feature2 = p[2];
 do_cpuid(0, p);
 if (p[0] >= 7) {
  cpuid_count(7, 0, p);
  cpu_stdext_feature = p[1];
  cpu_stdext_feature2 = p[2];
 } else {
  cpu_stdext_feature = 0;
  cpu_stdext_feature2 = 0;
 }

 switch (ELF_R_TYPE(r->r_info)) {
 case 128:
  ptr = (Elf_Addr *)r->r_addend;
  where = (Elf_Addr *)r->r_offset;
  target = ((Elf_Addr (*)(uint32_t, uint32_t, uint32_t,
      uint32_t))ptr)(cpu_feature, cpu_feature2,
      cpu_stdext_feature, cpu_stdext_feature2);
  *where = target;
  break;
 }
}
