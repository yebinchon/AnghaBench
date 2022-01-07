
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int db_expr_t ;
struct TYPE_2__ {int ds_script; int ds_scriptname; } ;


 int DB_MAXSCRIPTS ;
 int db_printf (char*,int ,int ) ;
 TYPE_1__* db_script_table ;
 scalar_t__ strlen (int ) ;

void
db_scripts_cmd(db_expr_t addr, bool have_addr, db_expr_t count,
    char *modif)
{
 int i;

 for (i = 0; i < DB_MAXSCRIPTS; i++) {
  if (strlen(db_script_table[i].ds_scriptname) != 0) {
   db_printf("%s=%s\n",
       db_script_table[i].ds_scriptname,
       db_script_table[i].ds_script);
  }
 }
}
