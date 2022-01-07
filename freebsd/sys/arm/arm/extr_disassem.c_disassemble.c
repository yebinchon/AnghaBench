
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int disasm (int *,int ,int ) ;
 int disassemble_di ;

void
disassemble(u_int address)
{

 (void)disasm(&disassemble_di, address, 0);
}
