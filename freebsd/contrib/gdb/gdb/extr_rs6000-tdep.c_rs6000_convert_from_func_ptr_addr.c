
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct obj_section {TYPE_1__* the_bfd_section; } ;
struct gdbarch {int dummy; } ;
struct TYPE_4__ {int wordsize; } ;
struct TYPE_3__ {int flags; } ;
typedef int CORE_ADDR ;


 int SEC_CODE ;
 int current_gdbarch ;
 struct obj_section* find_pc_section (int ) ;
 TYPE_2__* gdbarch_tdep (int ) ;
 int read_memory_addr (int ,int ) ;

__attribute__((used)) static CORE_ADDR
rs6000_convert_from_func_ptr_addr (struct gdbarch *gdbarch,
       CORE_ADDR addr,
       struct target_ops *targ)
{
  struct obj_section *s;

  s = find_pc_section (addr);
  if (s && s->the_bfd_section->flags & SEC_CODE)
    return addr;


  return read_memory_addr (addr, gdbarch_tdep (current_gdbarch)->wordsize);
}
