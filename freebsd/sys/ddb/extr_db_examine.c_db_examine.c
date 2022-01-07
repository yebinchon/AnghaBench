
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char db_expr_t ;
typedef int db_addr_t ;


 int DB_STGY_ANY ;
 int db_disasm (int,int) ;
 int db_end_line (int) ;
 char db_get_value (int,int,int) ;
 int db_next ;
 int db_pager_quit ;
 int db_prev ;
 int db_print_position () ;
 int db_printf (char*,...) ;
 int db_printsym (char,int ) ;

__attribute__((used)) static void
db_examine(db_addr_t addr, char *fmt, int count)
{
 int c;
 db_expr_t value;
 int size;
 int width;
 char * fp;

 while (--count >= 0 && !db_pager_quit) {
     fp = fmt;
     size = 4;
     while ((c = *fp++) != 0) {
  switch (c) {
      case 'b':
   size = 1;
   break;
      case 'h':
   size = 2;
   break;
      case 'l':
   size = 4;
   break;
      case 'g':
   size = 8;
   break;
      case 'a':
   size = sizeof(void *);

   if (db_print_position() != 0)
       db_printf("\n");
   db_prev = addr;
   db_printsym(addr, DB_STGY_ANY);
   db_printf(":\t");
   break;
      default:
   if (db_print_position() == 0) {

       db_printsym(addr, DB_STGY_ANY);
       db_printf(":\t");
       db_prev = addr;
   }

   width = size * 4;
   switch (c) {
       case 'r':
    value = db_get_value(addr, size, 1);
    addr += size;
    db_printf("%+-*lr", width, (long)value);
    break;
       case 'x':
    value = db_get_value(addr, size, 0);
    addr += size;
    db_printf("%-*lx", width, (long)value);
    break;
       case 'z':
    value = db_get_value(addr, size, 1);
    addr += size;
    db_printf("%-*ly", width, (long)value);
    break;
       case 'd':
    value = db_get_value(addr, size, 1);
    addr += size;
    db_printf("%-*ld", width, (long)value);
    break;
       case 'u':
    value = db_get_value(addr, size, 0);
    addr += size;
    db_printf("%-*lu", width, (long)value);
    break;
       case 'o':
    value = db_get_value(addr, size, 0);
    addr += size;
    db_printf("%-*lo", width, (long)value);
    break;
       case 'c':
    value = db_get_value(addr, 1, 0);
    addr += 1;
    if (value >= ' ' && value <= '~')
        db_printf("%c", (int)value);
    else
        db_printf("\\%03o", (int)value);
    break;
       case 's':
    for (;;) {
        value = db_get_value(addr, 1, 0);
        addr += 1;
        if (value == 0)
     break;
        if (value >= ' ' && value <= '~')
     db_printf("%c", (int)value);
        else
     db_printf("\\%03o", (int)value);
    }
    break;
       case 'S':
    value = db_get_value(addr, sizeof(void *),
        0);
    addr += sizeof(void *);
    db_printsym(value, DB_STGY_ANY);
    break;
       case 'i':
    addr = db_disasm(addr, 0);
    break;
       case 'I':
    addr = db_disasm(addr, 1);
    break;
       default:
    break;
   }
   if (db_print_position() != 0)
       db_end_line(1);
   break;
  }
     }
 }
 db_next = addr;
}
