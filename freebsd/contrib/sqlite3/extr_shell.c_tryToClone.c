
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {int * db; } ;
typedef TYPE_1__ ShellState ;


 scalar_t__ access (char const*,int ) ;
 int close_db (int *) ;
 char const* sqlite3_errmsg (int *) ;
 int sqlite3_exec (int *,char*,int ,int ,int ) ;
 int sqlite3_open (char const*,int **) ;
 int stderr ;
 int tryToCloneData ;
 int tryToCloneSchema (TYPE_1__*,int *,char*,int ) ;
 int utf8_printf (int ,char*,char const*) ;

__attribute__((used)) static void tryToClone(ShellState *p, const char *zNewDb){
  int rc;
  sqlite3 *newDb = 0;
  if( access(zNewDb,0)==0 ){
    utf8_printf(stderr, "File \"%s\" already exists.\n", zNewDb);
    return;
  }
  rc = sqlite3_open(zNewDb, &newDb);
  if( rc ){
    utf8_printf(stderr, "Cannot create output database: %s\n",
            sqlite3_errmsg(newDb));
  }else{
    sqlite3_exec(p->db, "PRAGMA writable_schema=ON;", 0, 0, 0);
    sqlite3_exec(newDb, "BEGIN EXCLUSIVE;", 0, 0, 0);
    tryToCloneSchema(p, newDb, "type='table'", tryToCloneData);
    tryToCloneSchema(p, newDb, "type!='table'", 0);
    sqlite3_exec(newDb, "COMMIT;", 0, 0, 0);
    sqlite3_exec(p->db, "PRAGMA writable_schema=OFF;", 0, 0, 0);
  }
  close_db(newDb);
}
