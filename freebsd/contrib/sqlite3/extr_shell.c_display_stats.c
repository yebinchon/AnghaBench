
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int z ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;
struct TYPE_4__ {int statsOn; int shellFlgs; int * out; int * pStmt; } ;
typedef TYPE_1__ ShellState ;
typedef int FILE ;


 int SHFLG_Lookaside ;
 int SHFLG_Pagecache ;
 int SQLITE_DBSTATUS_CACHE_HIT ;
 int SQLITE_DBSTATUS_CACHE_MISS ;
 int SQLITE_DBSTATUS_CACHE_SPILL ;
 int SQLITE_DBSTATUS_CACHE_USED ;
 int SQLITE_DBSTATUS_CACHE_WRITE ;
 int SQLITE_DBSTATUS_LOOKASIDE_HIT ;
 int SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL ;
 int SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE ;
 int SQLITE_DBSTATUS_LOOKASIDE_USED ;
 int SQLITE_DBSTATUS_SCHEMA_USED ;
 int SQLITE_DBSTATUS_STMT_USED ;
 int SQLITE_STATUS_MALLOC_COUNT ;
 int SQLITE_STATUS_MALLOC_SIZE ;
 int SQLITE_STATUS_MEMORY_USED ;
 int SQLITE_STATUS_PAGECACHE_OVERFLOW ;
 int SQLITE_STATUS_PAGECACHE_SIZE ;
 int SQLITE_STATUS_PAGECACHE_USED ;
 int SQLITE_STATUS_PARSER_STACK ;
 int SQLITE_STMTSTATUS_AUTOINDEX ;
 int SQLITE_STMTSTATUS_FULLSCAN_STEP ;
 int SQLITE_STMTSTATUS_MEMUSED ;
 int SQLITE_STMTSTATUS_REPREPARE ;
 int SQLITE_STMTSTATUS_RUN ;
 int SQLITE_STMTSTATUS_SORT ;
 int SQLITE_STMTSTATUS_VM_STEP ;
 int displayLinuxIoStats (int *) ;
 int displayStatLine (TYPE_1__*,char*,char*,int ,int) ;
 int raw_printf (int *,char*,...) ;
 int sqlite3_column_count (int *) ;
 int sqlite3_column_database_name (int *,int) ;
 int sqlite3_column_decltype (int *,int) ;
 int sqlite3_column_name (int *,int) ;
 int sqlite3_column_origin_name (int *,int) ;
 int sqlite3_column_table_name (int *,int) ;
 int sqlite3_db_status (int *,int ,int*,int*,int) ;
 int sqlite3_snprintf (int,char*,char*,...) ;
 int sqlite3_stmt_status (int *,int ,int) ;
 int utf8_printf (int *,char*,char*,int ) ;

__attribute__((used)) static int display_stats(
  sqlite3 *db,
  ShellState *pArg,
  int bReset
){
  int iCur;
  int iHiwtr;
  FILE *out;
  if( pArg==0 || pArg->out==0 ) return 0;
  out = pArg->out;

  if( pArg->pStmt && (pArg->statsOn & 2) ){
    int nCol, i, x;
    sqlite3_stmt *pStmt = pArg->pStmt;
    char z[100];
    nCol = sqlite3_column_count(pStmt);
    raw_printf(out, "%-36s %d\n", "Number of output columns:", nCol);
    for(i=0; i<nCol; i++){
      sqlite3_snprintf(sizeof(z),z,"Column %d %nname:", i, &x);
      utf8_printf(out, "%-36s %s\n", z, sqlite3_column_name(pStmt,i));

      sqlite3_snprintf(30, z+x, "declared type:");
      utf8_printf(out, "%-36s %s\n", z, sqlite3_column_decltype(pStmt, i));
    }
  }

  displayStatLine(pArg, "Memory Used:",
     "%lld (max %lld) bytes", SQLITE_STATUS_MEMORY_USED, bReset);
  displayStatLine(pArg, "Number of Outstanding Allocations:",
     "%lld (max %lld)", SQLITE_STATUS_MALLOC_COUNT, bReset);
  if( pArg->shellFlgs & SHFLG_Pagecache ){
    displayStatLine(pArg, "Number of Pcache Pages Used:",
       "%lld (max %lld) pages", SQLITE_STATUS_PAGECACHE_USED, bReset);
  }
  displayStatLine(pArg, "Number of Pcache Overflow Bytes:",
     "%lld (max %lld) bytes", SQLITE_STATUS_PAGECACHE_OVERFLOW, bReset);
  displayStatLine(pArg, "Largest Allocation:",
     "%lld bytes", SQLITE_STATUS_MALLOC_SIZE, bReset);
  displayStatLine(pArg, "Largest Pcache Allocation:",
     "%lld bytes", SQLITE_STATUS_PAGECACHE_SIZE, bReset);





  if( db ){
    if( pArg->shellFlgs & SHFLG_Lookaside ){
      iHiwtr = iCur = -1;
      sqlite3_db_status(db, SQLITE_DBSTATUS_LOOKASIDE_USED,
                        &iCur, &iHiwtr, bReset);
      raw_printf(pArg->out,
              "Lookaside Slots Used:                %d (max %d)\n",
              iCur, iHiwtr);
      sqlite3_db_status(db, SQLITE_DBSTATUS_LOOKASIDE_HIT,
                        &iCur, &iHiwtr, bReset);
      raw_printf(pArg->out, "Successful lookaside attempts:       %d\n",
              iHiwtr);
      sqlite3_db_status(db, SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE,
                        &iCur, &iHiwtr, bReset);
      raw_printf(pArg->out, "Lookaside failures due to size:      %d\n",
              iHiwtr);
      sqlite3_db_status(db, SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL,
                        &iCur, &iHiwtr, bReset);
      raw_printf(pArg->out, "Lookaside failures due to OOM:       %d\n",
              iHiwtr);
    }
    iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_CACHE_USED, &iCur, &iHiwtr, bReset);
    raw_printf(pArg->out, "Pager Heap Usage:                    %d bytes\n",
            iCur);
    iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_CACHE_HIT, &iCur, &iHiwtr, 1);
    raw_printf(pArg->out, "Page cache hits:                     %d\n", iCur);
    iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_CACHE_MISS, &iCur, &iHiwtr, 1);
    raw_printf(pArg->out, "Page cache misses:                   %d\n", iCur);
    iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_CACHE_WRITE, &iCur, &iHiwtr, 1);
    raw_printf(pArg->out, "Page cache writes:                   %d\n", iCur);
    iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_CACHE_SPILL, &iCur, &iHiwtr, 1);
    raw_printf(pArg->out, "Page cache spills:                   %d\n", iCur);
    iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_SCHEMA_USED, &iCur, &iHiwtr, bReset);
    raw_printf(pArg->out, "Schema Heap Usage:                   %d bytes\n",
            iCur);
    iHiwtr = iCur = -1;
    sqlite3_db_status(db, SQLITE_DBSTATUS_STMT_USED, &iCur, &iHiwtr, bReset);
    raw_printf(pArg->out, "Statement Heap/Lookaside Usage:      %d bytes\n",
            iCur);
  }

  if( pArg->pStmt ){
    iCur = sqlite3_stmt_status(pArg->pStmt, SQLITE_STMTSTATUS_FULLSCAN_STEP,
                               bReset);
    raw_printf(pArg->out, "Fullscan Steps:                      %d\n", iCur);
    iCur = sqlite3_stmt_status(pArg->pStmt, SQLITE_STMTSTATUS_SORT, bReset);
    raw_printf(pArg->out, "Sort Operations:                     %d\n", iCur);
    iCur = sqlite3_stmt_status(pArg->pStmt, SQLITE_STMTSTATUS_AUTOINDEX,bReset);
    raw_printf(pArg->out, "Autoindex Inserts:                   %d\n", iCur);
    iCur = sqlite3_stmt_status(pArg->pStmt, SQLITE_STMTSTATUS_VM_STEP, bReset);
    raw_printf(pArg->out, "Virtual Machine Steps:               %d\n", iCur);
    iCur = sqlite3_stmt_status(pArg->pStmt, SQLITE_STMTSTATUS_REPREPARE,bReset);
    raw_printf(pArg->out, "Reprepare operations:                %d\n", iCur);
    iCur = sqlite3_stmt_status(pArg->pStmt, SQLITE_STMTSTATUS_RUN, bReset);
    raw_printf(pArg->out, "Number of times run:                 %d\n", iCur);
    iCur = sqlite3_stmt_status(pArg->pStmt, SQLITE_STMTSTATUS_MEMUSED, bReset);
    raw_printf(pArg->out, "Memory used by prepared stmt:        %d\n", iCur);
  }


  displayLinuxIoStats(pArg->out);




  return 0;
}
