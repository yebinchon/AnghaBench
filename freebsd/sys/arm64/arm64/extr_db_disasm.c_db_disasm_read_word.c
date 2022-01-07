
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int ;


 int INSN_SIZE ;
 int db_get_value (int ,int ,int ) ;

__attribute__((used)) static u_int
db_disasm_read_word(vm_offset_t address)
{

 return (db_get_value(address, INSN_SIZE, 0));
}
