
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ db_expr_t ;
typedef void* db_addr_t ;


 int DB_STGY_ANY ;
 int db_error (char*) ;
 scalar_t__ db_expression (scalar_t__*) ;
 scalar_t__ db_get_value (void*,int,int) ;
 void* db_next ;
 void* db_prev ;
 int db_printf (char*,long,long) ;
 int db_printsym (void*,int ) ;
 int db_put_value (void*,int,scalar_t__) ;
 int db_skip_to_eol () ;

void
db_write_cmd(db_expr_t address, bool have_addr, db_expr_t count,
    char * modif)
{
 db_addr_t addr;
 db_expr_t old_value;
 db_expr_t new_value;
 int size;
 bool wrote_one = 0;

 addr = (db_addr_t) address;

 switch (modif[0]) {
     case 'b':
  size = 1;
  break;
     case 'h':
  size = 2;
  break;
     case 'l':
     case '\0':
  size = 4;
  break;
     default:
  db_error("Unknown size\n");
  return;
 }

 while (db_expression(&new_value)) {
     old_value = db_get_value(addr, size, 0);
     db_printsym(addr, DB_STGY_ANY);
     db_printf("\t\t%#8lr\t=\t%#8lr\n", (long)old_value,(long)new_value);
     db_put_value(addr, size, new_value);
     addr += size;

     wrote_one = 1;
 }

 if (!wrote_one)
     db_error("Nothing written.\n");

 db_next = addr;
 db_prev = addr - size;

 db_skip_to_eol();
}
