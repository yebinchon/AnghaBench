
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
struct TYPE_3__ {int * db; } ;
typedef TYPE_1__ ShellState ;



 int SQLITE_DONE ;



 int SQLITE_OK ;
 int SQLITE_ROW ;
 int SQLITE_STATIC ;

 int fflush (int ) ;
 int memcpy (char*,char*,int) ;
 int printf (char*,char) ;
 int shell_out_of_memory () ;
 int sqlite3_bind_blob (int *,int,int ,int ,int ) ;
 int sqlite3_bind_double (int *,int,int ) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_bind_null (int *,int) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 int sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_count (int *) ;
 int sqlite3_column_double (int *,int) ;
 int sqlite3_column_int64 (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_column_type (int *,int) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_extended_errcode (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (int) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_snprintf (int,char*,char*,char const*) ;
 int sqlite3_step (int *) ;
 int stderr ;
 int stdout ;
 int strlen30 (char const*) ;
 int utf8_printf (int ,char*,char const*,...) ;

__attribute__((used)) static void tryToCloneData(
  ShellState *p,
  sqlite3 *newDb,
  const char *zTable
){
  sqlite3_stmt *pQuery = 0;
  sqlite3_stmt *pInsert = 0;
  char *zQuery = 0;
  char *zInsert = 0;
  int rc;
  int i, j, n;
  int nTable = strlen30(zTable);
  int k = 0;
  int cnt = 0;
  const int spinRate = 10000;

  zQuery = sqlite3_mprintf("SELECT * FROM \"%w\"", zTable);
  rc = sqlite3_prepare_v2(p->db, zQuery, -1, &pQuery, 0);
  if( rc ){
    utf8_printf(stderr, "Error %d: %s on [%s]\n",
            sqlite3_extended_errcode(p->db), sqlite3_errmsg(p->db),
            zQuery);
    goto end_data_xfer;
  }
  n = sqlite3_column_count(pQuery);
  zInsert = sqlite3_malloc64(200 + nTable + n*3);
  if( zInsert==0 ) shell_out_of_memory();
  sqlite3_snprintf(200+nTable,zInsert,
                   "INSERT OR IGNORE INTO \"%s\" VALUES(?", zTable);
  i = strlen30(zInsert);
  for(j=1; j<n; j++){
    memcpy(zInsert+i, ",?", 2);
    i += 2;
  }
  memcpy(zInsert+i, ");", 3);
  rc = sqlite3_prepare_v2(newDb, zInsert, -1, &pInsert, 0);
  if( rc ){
    utf8_printf(stderr, "Error %d: %s on [%s]\n",
            sqlite3_extended_errcode(newDb), sqlite3_errmsg(newDb),
            zQuery);
    goto end_data_xfer;
  }
  for(k=0; k<2; k++){
    while( (rc = sqlite3_step(pQuery))==SQLITE_ROW ){
      for(i=0; i<n; i++){
        switch( sqlite3_column_type(pQuery, i) ){
          case 129: {
            sqlite3_bind_null(pInsert, i+1);
            break;
          }
          case 130: {
            sqlite3_bind_int64(pInsert, i+1, sqlite3_column_int64(pQuery,i));
            break;
          }
          case 131: {
            sqlite3_bind_double(pInsert, i+1, sqlite3_column_double(pQuery,i));
            break;
          }
          case 128: {
            sqlite3_bind_text(pInsert, i+1,
                             (const char*)sqlite3_column_text(pQuery,i),
                             -1, SQLITE_STATIC);
            break;
          }
          case 132: {
            sqlite3_bind_blob(pInsert, i+1, sqlite3_column_blob(pQuery,i),
                                            sqlite3_column_bytes(pQuery,i),
                                            SQLITE_STATIC);
            break;
          }
        }
      }
      rc = sqlite3_step(pInsert);
      if( rc!=SQLITE_OK && rc!=SQLITE_ROW && rc!=SQLITE_DONE ){
        utf8_printf(stderr, "Error %d: %s\n", sqlite3_extended_errcode(newDb),
                        sqlite3_errmsg(newDb));
      }
      sqlite3_reset(pInsert);
      cnt++;
      if( (cnt%spinRate)==0 ){
        printf("%c\b", "|/-\\"[(cnt/spinRate)%4]);
        fflush(stdout);
      }
    }
    if( rc==SQLITE_DONE ) break;
    sqlite3_finalize(pQuery);
    sqlite3_free(zQuery);
    zQuery = sqlite3_mprintf("SELECT * FROM \"%w\" ORDER BY rowid DESC;",
                             zTable);
    rc = sqlite3_prepare_v2(p->db, zQuery, -1, &pQuery, 0);
    if( rc ){
      utf8_printf(stderr, "Warning: cannot step \"%s\" backwards", zTable);
      break;
    }
  }

end_data_xfer:
  sqlite3_finalize(pQuery);
  sqlite3_finalize(pInsert);
  sqlite3_free(zQuery);
  sqlite3_free(zInsert);
}
