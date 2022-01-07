
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct so_list {struct so_list* next; int so_original_name; } ;
struct minimal_symbol {int dummy; } ;
typedef int bfd ;
typedef int asection ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ LM_ADDR (struct so_list*) ;
 int SEC_CODE ;
 scalar_t__ SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 char* alloca (unsigned int) ;
 int auto_solib_add ;
 int bfd_check_format (int *,int ) ;
 int bfd_close (int *) ;
 int * bfd_fdopenr (char*,int ,int) ;
 int * bfd_get_section_by_name (int *,char*) ;
 int bfd_get_section_contents (int *,int *,char*,int ,unsigned int) ;
 scalar_t__ bfd_lookup_symbol (int *,char*,int ) ;
 int bfd_object ;
 unsigned int bfd_section_size (int *,int *) ;
 scalar_t__ bfd_section_vma (int *,int *) ;
 char** bkpt_names ;
 scalar_t__ breakpoint_addr ;
 int create_solib_event_breakpoint (scalar_t__) ;
 int * exec_bfd ;
 scalar_t__ exec_entry_point (int *,struct target_ops*) ;
 int gnutarget ;
 unsigned int interp_plt_sect_high ;
 unsigned int interp_plt_sect_low ;
 unsigned int interp_text_sect_high ;
 unsigned int interp_text_sect_low ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int ) ;
 scalar_t__ read_pc () ;
 int remove_solib_event_breakpoints () ;
 int solib_add (int *,int ,int *,int ) ;
 char** solib_break_names ;
 int solib_open (char*,char**) ;
 scalar_t__ strcmp (char*,int ) ;
 struct so_list* svr4_current_sos () ;
 int symfile_objfile ;
 struct target_ops* target_bfd_reopen (int *) ;
 int target_close (struct target_ops*,int ) ;
 int warning (char*,...) ;

__attribute__((used)) static int
enable_break (void)
{
  int success = 0;
  return (success);
}
