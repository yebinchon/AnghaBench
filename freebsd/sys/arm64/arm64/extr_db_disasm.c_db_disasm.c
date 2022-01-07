
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int db_disasm_interface ;
 int disasm (int *,int ,int) ;

vm_offset_t
db_disasm(vm_offset_t loc, bool altfmt)
{

 return (disasm(&db_disasm_interface, loc, altfmt));
}
