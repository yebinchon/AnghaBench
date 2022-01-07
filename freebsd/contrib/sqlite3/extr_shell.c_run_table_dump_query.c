
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_3__ {int nErr; int db; int out; } ;
typedef TYPE_1__ ShellState ;


 int SQLITE_CORRUPT ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int raw_printf (int ,char*) ;
 int sqlite3_column_count (int *) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int ,char const*,int,int **,int ) ;
 int sqlite3_step (int *) ;
 int utf8_printf (int ,char*,...) ;

__attribute__((used)) static int run_table_dump_query(
  ShellState *p,
  const char *zSelect,
  const char *zFirstRow
){
  sqlite3_stmt *pSelect;
  int rc;
  int nResult;
  int i;
  const char *z;
  rc = sqlite3_prepare_v2(p->db, zSelect, -1, &pSelect, 0);
  if( rc!=SQLITE_OK || !pSelect ){
    utf8_printf(p->out, "/**** ERROR: (%d) %s *****/\n", rc,
                sqlite3_errmsg(p->db));
    if( (rc&0xff)!=SQLITE_CORRUPT ) p->nErr++;
    return rc;
  }
  rc = sqlite3_step(pSelect);
  nResult = sqlite3_column_count(pSelect);
  while( rc==SQLITE_ROW ){
    if( zFirstRow ){
      utf8_printf(p->out, "%s", zFirstRow);
      zFirstRow = 0;
    }
    z = (const char*)sqlite3_column_text(pSelect, 0);
    utf8_printf(p->out, "%s", z);
    for(i=1; i<nResult; i++){
      utf8_printf(p->out, ",%s", sqlite3_column_text(pSelect, i));
    }
    if( z==0 ) z = "";
    while( z[0] && (z[0]!='-' || z[1]!='-') ) z++;
    if( z[0] ){
      raw_printf(p->out, "\n;\n");
    }else{
      raw_printf(p->out, ";\n");
    }
    rc = sqlite3_step(pSelect);
  }
  rc = sqlite3_finalize(pSelect);
  if( rc!=SQLITE_OK ){
    utf8_printf(p->out, "/**** ERROR: (%d) %s *****/\n", rc,
                sqlite3_errmsg(p->db));
    if( (rc&0xff)!=SQLITE_CORRUPT ) p->nErr++;
  }
  return rc;
}
