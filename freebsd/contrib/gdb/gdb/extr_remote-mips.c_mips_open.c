
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ arch; int mach; } ;


 int MON_IDT ;
 TYPE_1__* TARGET_ARCHITECTURE ;
 scalar_t__ bfd_arch_mips ;





 int common_open (int *,char*,int,int ,char const*) ;
 int mips_ops ;

__attribute__((used)) static void
mips_open (char *name, int from_tty)
{
  const char *monitor_prompt = ((void*)0);
  if (TARGET_ARCHITECTURE != ((void*)0)
      && TARGET_ARCHITECTURE->arch == bfd_arch_mips)
    {
    switch (TARGET_ARCHITECTURE->mach)
      {
      case 132:
      case 131:
      case 130:
      case 129:
      case 128:
 monitor_prompt = "<RISQ> ";
 break;
      }
    }
  if (monitor_prompt == ((void*)0))
    monitor_prompt = "<IDT>";
  common_open (&mips_ops, name, from_tty, MON_IDT, monitor_prompt);
}
