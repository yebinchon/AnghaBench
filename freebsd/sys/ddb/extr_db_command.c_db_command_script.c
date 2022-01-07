
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_cmd_table ;
 int db_command (int *,int *,int ) ;
 int db_dot ;
 int db_inject_line (char const*) ;
 int db_last_command ;
 int db_next ;
 int db_prev ;

void
db_command_script(const char *command)
{
 db_prev = db_next = db_dot;
 db_inject_line(command);
 db_command(&db_last_command, &db_cmd_table, 0);
}
