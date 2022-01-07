
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;
typedef int db_addr_t ;


 int DB_STGY_ANY ;
 int db_error (char*) ;
 char db_print_format ;
 int db_printf (char*,...) ;
 int db_printsym (int ,int ) ;

void
db_print_cmd(db_expr_t addr, bool have_addr, db_expr_t count, char *modif)
{
 db_expr_t value;

 if (modif[0] != '\0')
     db_print_format = modif[0];

 switch (db_print_format) {
     case 'a':
  db_printsym((db_addr_t)addr, DB_STGY_ANY);
  break;
     case 'r':
  db_printf("%+11lr", (long)addr);
  break;
     case 'x':
  db_printf("%8lx", (unsigned long)addr);
  break;
     case 'z':
  db_printf("%8ly", (long)addr);
  break;
     case 'd':
  db_printf("%11ld", (long)addr);
  break;
     case 'u':
  db_printf("%11lu", (unsigned long)addr);
  break;
     case 'o':
  db_printf("%16lo", (unsigned long)addr);
  break;
     case 'c':
  value = addr & 0xFF;
  if (value >= ' ' && value <= '~')
      db_printf("%c", (int)value);
  else
      db_printf("\\%03o", (int)value);
  break;
     default:
  db_print_format = 'x';
  db_error("Syntax error: unsupported print modifier\n");

 }
 db_printf("\n");
}
