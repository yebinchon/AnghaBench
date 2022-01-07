
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct sbuf {int dummy; } ;
struct TYPE_2__ {int id_aa64afr1; int id_aa64afr0; int id_aa64dfr1; int id_aa64dfr0; int id_aa64mmfr2; int id_aa64mmfr1; int id_aa64mmfr0; int id_aa64pfr1; int id_aa64pfr0; int id_aa64isar1; int id_aa64isar0; int mpidr; int cpu_revision; int cpu_variant; int cpu_part_name; int cpu_impl_name; } ;


 int CPU_AFF0 (int ) ;
 int CPU_AFF1 (int ) ;
 int CPU_AFF2 (int ) ;
 int CPU_AFF3 (int ) ;
 scalar_t__ CPU_MATCH_ERRATA_CAVIUM_THUNDERX_1_1 ;
 scalar_t__ CPU_VAR (int ) ;
 int PCPU_GET (int ) ;
 int PRINT_ID_AA64_AFR0 ;
 int PRINT_ID_AA64_AFR1 ;
 int PRINT_ID_AA64_DFR0 ;
 int PRINT_ID_AA64_DFR1 ;
 int PRINT_ID_AA64_ISAR0 ;
 int PRINT_ID_AA64_ISAR1 ;
 int PRINT_ID_AA64_MMFR0 ;
 int PRINT_ID_AA64_MMFR1 ;
 int PRINT_ID_AA64_MMFR2 ;
 int PRINT_ID_AA64_PFR0 ;
 int PRINT_ID_AA64_PFR1 ;
 int cpu_aff_levels ;
 TYPE_1__* cpu_desc ;
 int cpu_print_regs ;
 int id_aa64afr0_fields ;
 int id_aa64afr1_fields ;
 int id_aa64dfr0_fields ;
 int id_aa64dfr1_fields ;
 int id_aa64isar0_fields ;
 int id_aa64isar1_fields ;
 int id_aa64mmfr0_fields ;
 int id_aa64mmfr1_fields ;
 int id_aa64mmfr2_fields ;
 int id_aa64pfr0_fields ;
 int id_aa64pfr1_fields ;
 int midr ;
 int print_id_register (struct sbuf*,char*,int ,int ) ;
 int printf (char*,...) ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_clear (struct sbuf*) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_printf (struct sbuf*,char*,size_t,...) ;

__attribute__((used)) static void
print_cpu_features(u_int cpu)
{
 struct sbuf *sb;

 sb = sbuf_new_auto();
 sbuf_printf(sb, "CPU%3d: %s %s r%dp%d", cpu,
     cpu_desc[cpu].cpu_impl_name, cpu_desc[cpu].cpu_part_name,
     cpu_desc[cpu].cpu_variant, cpu_desc[cpu].cpu_revision);

 sbuf_cat(sb, " affinity:");
 switch(cpu_aff_levels) {
 default:
 case 4:
  sbuf_printf(sb, " %2d", CPU_AFF3(cpu_desc[cpu].mpidr));

 case 3:
  sbuf_printf(sb, " %2d", CPU_AFF2(cpu_desc[cpu].mpidr));

 case 2:
  sbuf_printf(sb, " %2d", CPU_AFF1(cpu_desc[cpu].mpidr));

 case 1:
 case 0:
  sbuf_printf(sb, " %2d", CPU_AFF0(cpu_desc[cpu].mpidr));
  break;
 }
 sbuf_finish(sb);
 printf("%s\n", sbuf_data(sb));
 sbuf_clear(sb);
 if (cpu == 0 && CPU_VAR(PCPU_GET(midr)) == 0 &&
     CPU_MATCH_ERRATA_CAVIUM_THUNDERX_1_1)
  printf("WARNING: ThunderX Pass 1.1 detected.\nThis has known "
      "hardware bugs that may cause the incorrect operation of "
      "atomic operations.\n");


 if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_ISAR0) != 0)
  print_id_register(sb, "Instruction Set Attributes 0",
      cpu_desc[cpu].id_aa64isar0, id_aa64isar0_fields);


 if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_ISAR1) != 0)
  print_id_register(sb, "Instruction Set Attributes 1",
      cpu_desc[cpu].id_aa64isar1, id_aa64isar1_fields);


 if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_PFR0) != 0)
  print_id_register(sb, "Processor Features 0",
      cpu_desc[cpu].id_aa64pfr0, id_aa64pfr0_fields);


 if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_PFR1) != 0)
  print_id_register(sb, "Processor Features 1",
      cpu_desc[cpu].id_aa64pfr1, id_aa64pfr1_fields);


 if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_MMFR0) != 0)
  print_id_register(sb, "Memory Model Features 0",
      cpu_desc[cpu].id_aa64mmfr0, id_aa64mmfr0_fields);


 if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_MMFR1) != 0)
  print_id_register(sb, "Memory Model Features 1",
      cpu_desc[cpu].id_aa64mmfr1, id_aa64mmfr1_fields);


 if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_MMFR2) != 0)
  print_id_register(sb, "Memory Model Features 2",
      cpu_desc[cpu].id_aa64mmfr2, id_aa64mmfr2_fields);


 if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_DFR0) != 0)
  print_id_register(sb, "Debug Features 0",
      cpu_desc[cpu].id_aa64dfr0, id_aa64dfr0_fields);


 if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_DFR1) != 0)
  print_id_register(sb, "Debug Features 1",
      cpu_desc[cpu].id_aa64dfr1, id_aa64dfr1_fields);


 if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_AFR0) != 0)
  print_id_register(sb, "Auxiliary Features 0",
      cpu_desc[cpu].id_aa64afr0, id_aa64afr0_fields);


 if (cpu == 0 || (cpu_print_regs & PRINT_ID_AA64_AFR1) != 0)
  print_id_register(sb, "Auxiliary Features 1",
      cpu_desc[cpu].id_aa64afr1, id_aa64afr1_fields);

 sbuf_delete(sb);
 sb = ((void*)0);

}
