
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int db_addr_t ;


 int DB_STGY_ANY ;
 int db_printsym (int ,int ) ;

__attribute__((used)) static void
db_disasm_printaddr(u_int address)
{

 db_printsym((db_addr_t)address, DB_STGY_ANY);
}
