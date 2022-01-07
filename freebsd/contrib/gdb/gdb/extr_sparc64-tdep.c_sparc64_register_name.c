
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char const* name; } ;
struct TYPE_3__ {char const* name; } ;


 int SPARC64_NUM_PSEUDO_REGS ;
 int SPARC64_NUM_REGS ;
 TYPE_2__* sparc64_pseudo_register_info ;
 TYPE_1__* sparc64_register_info ;

__attribute__((used)) static const char *
sparc64_register_name (int regnum)
{
  if (regnum >= 0 && regnum < SPARC64_NUM_REGS)
    return sparc64_register_info[regnum].name;

  if (regnum >= SPARC64_NUM_REGS
      && regnum < SPARC64_NUM_REGS + SPARC64_NUM_PSEUDO_REGS)
    return sparc64_pseudo_register_info[regnum - SPARC64_NUM_REGS].name;

  return ((void*)0);
}
