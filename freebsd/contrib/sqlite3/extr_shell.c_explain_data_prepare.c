
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_3__ {int* aiIndent; int nIndent; scalar_t__ iIndent; int mode; int cMode; } ;
typedef TYPE_1__ ShellState ;


 int ArraySize (char const**) ;
 scalar_t__ SQLITE_ROW ;
 int shell_out_of_memory () ;
 int sqlite3_column_count (int *) ;
 int sqlite3_column_int (int *,int) ;
 int sqlite3_column_name (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_free (int*) ;
 scalar_t__ sqlite3_realloc64 (int*,int) ;
 int sqlite3_reset (int *) ;
 char* sqlite3_sql (int *) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ sqlite3_strnicmp (char const*,char*,int) ;
 int str_in_array (char const*,char const**) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static void explain_data_prepare(ShellState *p, sqlite3_stmt *pSql){
  const char *zSql;
  const char *z;
  int *abYield = 0;
  int nAlloc = 0;
  int iOp;

  const char *azNext[] = { "Next", "Prev", "VPrev", "VNext", "SorterNext", 0 };
  const char *azYield[] = { "Yield", "SeekLT", "SeekGT", "RowSetRead",
                            "Rewind", 0 };
  const char *azGoto[] = { "Goto", 0 };



  if( sqlite3_column_count(pSql)!=8 ){
    p->cMode = p->mode;
    return;
  }
  zSql = sqlite3_sql(pSql);
  if( zSql==0 ) return;
  for(z=zSql; *z==' ' || *z=='\t' || *z=='\n' || *z=='\f' || *z=='\r'; z++);
  if( sqlite3_strnicmp(z, "explain", 7) ){
    p->cMode = p->mode;
    return;
  }

  for(iOp=0; SQLITE_ROW==sqlite3_step(pSql); iOp++){
    int i;
    int iAddr = sqlite3_column_int(pSql, 0);
    const char *zOp = (const char*)sqlite3_column_text(pSql, 1);






    int p2 = sqlite3_column_int(pSql, 3);
    int p2op = (p2 + (iOp-iAddr));


    if( iOp>=nAlloc ){
      if( iOp==0 ){


        static const char *explainCols[] = {
           "addr", "opcode", "p1", "p2", "p3", "p4", "p5", "comment" };
        int jj;
        for(jj=0; jj<ArraySize(explainCols); jj++){
          if( strcmp(sqlite3_column_name(pSql,jj),explainCols[jj])!=0 ){
            p->cMode = p->mode;
            sqlite3_reset(pSql);
            return;
          }
        }
      }
      nAlloc += 100;
      p->aiIndent = (int*)sqlite3_realloc64(p->aiIndent, nAlloc*sizeof(int));
      if( p->aiIndent==0 ) shell_out_of_memory();
      abYield = (int*)sqlite3_realloc64(abYield, nAlloc*sizeof(int));
      if( abYield==0 ) shell_out_of_memory();
    }
    abYield[iOp] = str_in_array(zOp, azYield);
    p->aiIndent[iOp] = 0;
    p->nIndent = iOp+1;

    if( str_in_array(zOp, azNext) ){
      for(i=p2op; i<iOp; i++) p->aiIndent[i] += 2;
    }
    if( str_in_array(zOp, azGoto) && p2op<p->nIndent
     && (abYield[p2op] || sqlite3_column_int(pSql, 2))
    ){
      for(i=p2op; i<iOp; i++) p->aiIndent[i] += 2;
    }
  }

  p->iIndent = 0;
  sqlite3_free(abYield);
  sqlite3_reset(pSql);
}
