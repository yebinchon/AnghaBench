
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISASSEM_COMMAND ;
 int show_source_or_disasm_and_command (int ) ;

__attribute__((used)) static void
show_disasm_command (void)
{
  show_source_or_disasm_and_command (DISASSEM_COMMAND);
}
