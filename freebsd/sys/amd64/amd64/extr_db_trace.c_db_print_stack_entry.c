
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int register_t ;
typedef int db_addr_t ;


 int DB_STGY_PROC ;
 int db_printf (char*,...) ;
 int db_printsym (int ,int ) ;

__attribute__((used)) static void
db_print_stack_entry(const char *name, db_addr_t callpc, void *frame)
{

 db_printf("%s() at ", name != ((void*)0) ? name : "??");
 db_printsym(callpc, DB_STGY_PROC);
 if (frame != ((void*)0))
  db_printf("/frame 0x%lx", (register_t)frame);
 db_printf("\n");
}
