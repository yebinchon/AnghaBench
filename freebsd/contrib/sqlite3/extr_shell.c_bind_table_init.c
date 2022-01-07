
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ ShellState ;


 int SQLITE_DBCONFIG_WRITABLE_SCHEMA ;
 int sqlite3_db_config (int ,int ,int,int*) ;
 int sqlite3_exec (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void bind_table_init(ShellState *p){
  int wrSchema = 0;
  sqlite3_db_config(p->db, SQLITE_DBCONFIG_WRITABLE_SCHEMA, -1, &wrSchema);
  sqlite3_db_config(p->db, SQLITE_DBCONFIG_WRITABLE_SCHEMA, 1, 0);
  sqlite3_exec(p->db,
    "CREATE TABLE IF NOT EXISTS temp.sqlite_parameters(\n"
    "  key TEXT PRIMARY KEY,\n"
    "  value ANY\n"
    ") WITHOUT ROWID;",
    0, 0, 0);
  sqlite3_db_config(p->db, SQLITE_DBCONFIG_WRITABLE_SCHEMA, wrSchema, 0);
}
