
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N (int *) ;
 int db_cmd_table ;
 int * db_cmds ;
 int db_command_register (int *,int *) ;
 int * db_show_active_cmds ;
 int db_show_active_table ;
 int * db_show_all_cmds ;
 int db_show_all_table ;
 int * db_show_cmds ;
 int db_show_table ;

void
db_command_init(void)
{

 int i;

 for (i = 0; i < (sizeof(db_cmds) / sizeof(db_cmds[0])); i++)
  db_command_register(&db_cmd_table, &db_cmds[i]);
 for (i = 0; i < (sizeof(db_show_cmds) / sizeof(db_show_cmds[0])); i++)
  db_command_register(&db_show_table, &db_show_cmds[i]);
 for (i = 0; i < (sizeof(db_show_active_cmds) / sizeof(db_show_active_cmds[0])); i++)
  db_command_register(&db_show_active_table,
      &db_show_active_cmds[i]);
 for (i = 0; i < (sizeof(db_show_all_cmds) / sizeof(db_show_all_cmds[0])); i++)
  db_command_register(&db_show_all_table, &db_show_all_cmds[i]);

}
