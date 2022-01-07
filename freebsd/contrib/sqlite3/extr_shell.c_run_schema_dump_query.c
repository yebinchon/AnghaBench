
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int out; int db; } ;
typedef TYPE_1__ ShellState ;


 int SQLITE_CORRUPT ;
 int dump_callback ;
 int free (char*) ;
 char* malloc (int) ;
 int raw_printf (int ,char*) ;
 int sqlite3_exec (int ,char const*,int ,TYPE_1__*,char**) ;
 int sqlite3_free (char*) ;
 int sqlite3_snprintf (int,char*,char*,char const*) ;
 int strlen30 (char const*) ;
 int utf8_printf (int ,char*,char*) ;

__attribute__((used)) static int run_schema_dump_query(
  ShellState *p,
  const char *zQuery
){
  int rc;
  char *zErr = 0;
  rc = sqlite3_exec(p->db, zQuery, dump_callback, p, &zErr);
  if( rc==SQLITE_CORRUPT ){
    char *zQ2;
    int len = strlen30(zQuery);
    raw_printf(p->out, "/****** CORRUPTION ERROR *******/\n");
    if( zErr ){
      utf8_printf(p->out, "/****** %s ******/\n", zErr);
      sqlite3_free(zErr);
      zErr = 0;
    }
    zQ2 = malloc( len+100 );
    if( zQ2==0 ) return rc;
    sqlite3_snprintf(len+100, zQ2, "%s ORDER BY rowid DESC", zQuery);
    rc = sqlite3_exec(p->db, zQ2, dump_callback, p, &zErr);
    if( rc ){
      utf8_printf(p->out, "/****** ERROR: %s ******/\n", zErr);
    }else{
      rc = SQLITE_CORRUPT;
    }
    sqlite3_free(zErr);
    free(zQ2);
  }
  return rc;
}
