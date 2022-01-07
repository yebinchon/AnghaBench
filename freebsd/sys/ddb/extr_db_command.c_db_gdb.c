
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int db_cmd_loop_done ;
 int db_printf (char*) ;
 scalar_t__ kdb_dbbe_select (char*) ;

__attribute__((used)) static void
db_gdb(db_expr_t dummy1, bool dummy2, db_expr_t dummy3, char *dummy4)
{

 if (kdb_dbbe_select("gdb") != 0) {
  db_printf("The remote GDB backend could not be selected.\n");
  return;
 }




 db_cmd_loop_done = 1;
 db_printf("(ctrl-c will return control to ddb)\n");
}
