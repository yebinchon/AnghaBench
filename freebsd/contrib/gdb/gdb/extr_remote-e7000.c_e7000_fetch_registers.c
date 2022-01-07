
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ arch; int mach; } ;


 int NUM_REALREGS ;
 int NUM_REGS ;
 TYPE_1__* TARGET_ARCHITECTURE ;
 scalar_t__ bfd_arch_h8300 ;
 scalar_t__ bfd_arch_sh ;







 int fetch_regs_from_dump (int ,char*) ;
 int gch ;
 int puts_e7000debug (char*) ;
 int supply_register (int,char*) ;
 char* want_h8300h ;
 char* want_h8300s ;
 char* want_sh ;
 char* want_sh3 ;

__attribute__((used)) static void
e7000_fetch_registers (void)
{
  int regno;
  char *wanted = ((void*)0);

  puts_e7000debug ("R\r");

  if (TARGET_ARCHITECTURE->arch == bfd_arch_sh)
    {
      wanted = want_sh;
      switch (TARGET_ARCHITECTURE->mach)
 {
 case 130:
 case 129:
 case 128:
   wanted = want_sh3;
 }
    }
  if (TARGET_ARCHITECTURE->arch == bfd_arch_h8300)
    {
      wanted = want_h8300h;
      switch (TARGET_ARCHITECTURE->mach)
 {
 case 134:
 case 133:
 case 132:
 case 131:
   wanted = want_h8300s;
 }
    }

  fetch_regs_from_dump (gch, wanted);


  for (regno = NUM_REALREGS; regno < NUM_REGS; regno++)
    {
      int buf = 0;

      supply_register (regno, (char *) (&buf));
    }
}
