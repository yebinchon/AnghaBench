#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  z ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {int statsOn; int shellFlgs; int /*<<< orphan*/ * out; int /*<<< orphan*/ * pStmt; } ;
typedef  TYPE_1__ ShellState ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SHFLG_Lookaside ; 
 int SHFLG_Pagecache ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_CACHE_HIT ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_CACHE_MISS ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_CACHE_SPILL ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_CACHE_USED ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_CACHE_WRITE ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_LOOKASIDE_HIT ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_LOOKASIDE_USED ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_SCHEMA_USED ; 
 int /*<<< orphan*/  SQLITE_DBSTATUS_STMT_USED ; 
 int /*<<< orphan*/  SQLITE_STATUS_MALLOC_COUNT ; 
 int /*<<< orphan*/  SQLITE_STATUS_MALLOC_SIZE ; 
 int /*<<< orphan*/  SQLITE_STATUS_MEMORY_USED ; 
 int /*<<< orphan*/  SQLITE_STATUS_PAGECACHE_OVERFLOW ; 
 int /*<<< orphan*/  SQLITE_STATUS_PAGECACHE_SIZE ; 
 int /*<<< orphan*/  SQLITE_STATUS_PAGECACHE_USED ; 
 int /*<<< orphan*/  SQLITE_STATUS_PARSER_STACK ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_AUTOINDEX ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_FULLSCAN_STEP ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_MEMUSED ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_REPREPARE ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_RUN ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_SORT ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_VM_STEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(
  sqlite3 *db,                /* Database to query */
  ShellState *pArg,           /* Pointer to ShellState */
  int bReset                  /* True to reset the stats */
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
    nCol = FUNC3(pStmt);
    FUNC2(out, "%-36s %d\n", "Number of output columns:", nCol);
    for(i=0; i<nCol; i++){
      FUNC10(sizeof(z),z,"Column %d %nname:", i, &x);
      FUNC12(out, "%-36s %s\n", z, FUNC6(pStmt,i));
#ifndef SQLITE_OMIT_DECLTYPE
      FUNC10(30, z+x, "declared type:");
      FUNC12(out, "%-36s %s\n", z, FUNC5(pStmt, i));
#endif
#ifdef SQLITE_ENABLE_COLUMN_METADATA
      sqlite3_snprintf(30, z+x, "database name:");
      utf8_printf(out, "%-36s %s\n", z, sqlite3_column_database_name(pStmt,i));
      sqlite3_snprintf(30, z+x, "table name:");
      utf8_printf(out, "%-36s %s\n", z, sqlite3_column_table_name(pStmt,i));
      sqlite3_snprintf(30, z+x, "origin name:");
      utf8_printf(out, "%-36s %s\n", z, sqlite3_column_origin_name(pStmt,i));
#endif
    }
  }

  FUNC1(pArg, "Memory Used:",
     "%lld (max %lld) bytes", SQLITE_STATUS_MEMORY_USED, bReset);
  FUNC1(pArg, "Number of Outstanding Allocations:",
     "%lld (max %lld)", SQLITE_STATUS_MALLOC_COUNT, bReset);
  if( pArg->shellFlgs & SHFLG_Pagecache ){
    FUNC1(pArg, "Number of Pcache Pages Used:",
       "%lld (max %lld) pages", SQLITE_STATUS_PAGECACHE_USED, bReset);
  }
  FUNC1(pArg, "Number of Pcache Overflow Bytes:",
     "%lld (max %lld) bytes", SQLITE_STATUS_PAGECACHE_OVERFLOW, bReset);
  FUNC1(pArg, "Largest Allocation:",
     "%lld bytes", SQLITE_STATUS_MALLOC_SIZE, bReset);
  FUNC1(pArg, "Largest Pcache Allocation:",
     "%lld bytes", SQLITE_STATUS_PAGECACHE_SIZE, bReset);
#ifdef YYTRACKMAXSTACKDEPTH
  displayStatLine(pArg, "Deepest Parser Stack:",
     "%lld (max %lld)", SQLITE_STATUS_PARSER_STACK, bReset);
#endif

  if( db ){
    if( pArg->shellFlgs & SHFLG_Lookaside ){
      iHiwtr = iCur = -1;
      FUNC9(db, SQLITE_DBSTATUS_LOOKASIDE_USED,
                        &iCur, &iHiwtr, bReset);
      FUNC2(pArg->out,
              "Lookaside Slots Used:                %d (max %d)\n",
              iCur, iHiwtr);
      FUNC9(db, SQLITE_DBSTATUS_LOOKASIDE_HIT,
                        &iCur, &iHiwtr, bReset);
      FUNC2(pArg->out, "Successful lookaside attempts:       %d\n",
              iHiwtr);
      FUNC9(db, SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE,
                        &iCur, &iHiwtr, bReset);
      FUNC2(pArg->out, "Lookaside failures due to size:      %d\n",
              iHiwtr);
      FUNC9(db, SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL,
                        &iCur, &iHiwtr, bReset);
      FUNC2(pArg->out, "Lookaside failures due to OOM:       %d\n",
              iHiwtr);
    }
    iHiwtr = iCur = -1;
    FUNC9(db, SQLITE_DBSTATUS_CACHE_USED, &iCur, &iHiwtr, bReset);
    FUNC2(pArg->out, "Pager Heap Usage:                    %d bytes\n",
            iCur);
    iHiwtr = iCur = -1;
    FUNC9(db, SQLITE_DBSTATUS_CACHE_HIT, &iCur, &iHiwtr, 1);
    FUNC2(pArg->out, "Page cache hits:                     %d\n", iCur);
    iHiwtr = iCur = -1;
    FUNC9(db, SQLITE_DBSTATUS_CACHE_MISS, &iCur, &iHiwtr, 1);
    FUNC2(pArg->out, "Page cache misses:                   %d\n", iCur);
    iHiwtr = iCur = -1;
    FUNC9(db, SQLITE_DBSTATUS_CACHE_WRITE, &iCur, &iHiwtr, 1);
    FUNC2(pArg->out, "Page cache writes:                   %d\n", iCur);
    iHiwtr = iCur = -1;
    FUNC9(db, SQLITE_DBSTATUS_CACHE_SPILL, &iCur, &iHiwtr, 1);
    FUNC2(pArg->out, "Page cache spills:                   %d\n", iCur);
    iHiwtr = iCur = -1;
    FUNC9(db, SQLITE_DBSTATUS_SCHEMA_USED, &iCur, &iHiwtr, bReset);
    FUNC2(pArg->out, "Schema Heap Usage:                   %d bytes\n",
            iCur);
    iHiwtr = iCur = -1;
    FUNC9(db, SQLITE_DBSTATUS_STMT_USED, &iCur, &iHiwtr, bReset);
    FUNC2(pArg->out, "Statement Heap/Lookaside Usage:      %d bytes\n",
            iCur);
  }

  if( pArg->pStmt ){
    iCur = FUNC11(pArg->pStmt, SQLITE_STMTSTATUS_FULLSCAN_STEP,
                               bReset);
    FUNC2(pArg->out, "Fullscan Steps:                      %d\n", iCur);
    iCur = FUNC11(pArg->pStmt, SQLITE_STMTSTATUS_SORT, bReset);
    FUNC2(pArg->out, "Sort Operations:                     %d\n", iCur);
    iCur = FUNC11(pArg->pStmt, SQLITE_STMTSTATUS_AUTOINDEX,bReset);
    FUNC2(pArg->out, "Autoindex Inserts:                   %d\n", iCur);
    iCur = FUNC11(pArg->pStmt, SQLITE_STMTSTATUS_VM_STEP, bReset);
    FUNC2(pArg->out, "Virtual Machine Steps:               %d\n", iCur);
    iCur = FUNC11(pArg->pStmt, SQLITE_STMTSTATUS_REPREPARE,bReset);
    FUNC2(pArg->out, "Reprepare operations:                %d\n", iCur);
    iCur = FUNC11(pArg->pStmt, SQLITE_STMTSTATUS_RUN, bReset);
    FUNC2(pArg->out, "Number of times run:                 %d\n", iCur);
    iCur = FUNC11(pArg->pStmt, SQLITE_STMTSTATUS_MEMUSED, bReset);
    FUNC2(pArg->out, "Memory used by prepared stmt:        %d\n", iCur);
  }

#ifdef __linux__
  FUNC0(pArg->out);
#endif

  /* Do not remove this machine readable comment: extra-stats-output-here */

  return 0;
}