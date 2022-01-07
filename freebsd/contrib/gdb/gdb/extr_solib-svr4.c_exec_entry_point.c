
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct bfd {int dummy; } ;
typedef int CORE_ADDR ;


 int bfd_get_start_address (struct bfd*) ;
 int current_gdbarch ;
 int gdbarch_convert_from_func_ptr_addr (int ,int ,struct target_ops*) ;

__attribute__((used)) static CORE_ADDR
exec_entry_point (struct bfd *abfd, struct target_ops *targ)
{
  return gdbarch_convert_from_func_ptr_addr (current_gdbarch,
          bfd_get_start_address (abfd),
          targ);
}
