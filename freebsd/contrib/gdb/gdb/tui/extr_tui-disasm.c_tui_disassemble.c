
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct tui_asm_line {void* insn; void* addr_string; scalar_t__ addr; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ gdb_print_insn (scalar_t__,struct ui_file*) ;
 int print_address (scalar_t__,struct ui_file*) ;
 int tui_file_get_strbuf (struct ui_file*) ;
 struct ui_file* tui_sfileopen (int) ;
 int ui_file_delete (struct ui_file*) ;
 int ui_file_rewind (struct ui_file*) ;
 int xfree (void*) ;
 void* xstrdup (int ) ;

__attribute__((used)) static CORE_ADDR
tui_disassemble (struct tui_asm_line* asm_lines, CORE_ADDR pc, int count)
{
  struct ui_file *gdb_dis_out;


  gdb_dis_out = tui_sfileopen (256);


  for (; count > 0; count--, asm_lines++)
    {
      if (asm_lines->addr_string)
        xfree (asm_lines->addr_string);
      if (asm_lines->insn)
        xfree (asm_lines->insn);

      print_address (pc, gdb_dis_out);
      asm_lines->addr = pc;
      asm_lines->addr_string = xstrdup (tui_file_get_strbuf (gdb_dis_out));

      ui_file_rewind (gdb_dis_out);

      pc = pc + gdb_print_insn (pc, gdb_dis_out);

      asm_lines->insn = xstrdup (tui_file_get_strbuf (gdb_dis_out));


      ui_file_rewind (gdb_dis_out);
    }
  ui_file_delete (gdb_dis_out);
  return pc;
}
