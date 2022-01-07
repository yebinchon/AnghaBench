
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ db_cmd_loop_done ;
 int db_cmd_table ;
 int db_command (int *,int *,int) ;
 void* db_dot ;
 int db_last_command ;
 void* db_next ;
 void* db_prev ;
 scalar_t__ db_print_position () ;
 int db_printf (char*) ;
 int db_read_line () ;

void
db_command_loop(void)
{



 db_prev = db_dot;
 db_next = db_dot;

 db_cmd_loop_done = 0;
 while (!db_cmd_loop_done) {
     if (db_print_position() != 0)
  db_printf("\n");

     db_printf("db> ");
     (void) db_read_line();

     db_command(&db_last_command, &db_cmd_table, 1);
 }
}
