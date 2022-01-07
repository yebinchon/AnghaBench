
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int db; } ;
typedef TYPE_3__ sqlite3expert ;
struct TYPE_12__ {scalar_t__ pVtab; } ;
typedef TYPE_4__ sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_14__ {scalar_t__ pData; } ;
struct TYPE_9__ {int zErrMsg; } ;
struct TYPE_13__ {TYPE_2__* pTab; TYPE_1__ base; TYPE_3__* pExpert; } ;
struct TYPE_10__ {int zName; } ;
typedef TYPE_5__ ExpertVtab ;
typedef TYPE_6__ ExpertCsr ;


 int SQLITE_OK ;
 int expertNext (TYPE_4__*) ;
 int idxPrintfPrepareStmt (int ,scalar_t__*,int *,char*,int ) ;
 int sqlite3_finalize (scalar_t__) ;

__attribute__((used)) static int expertFilter(
  sqlite3_vtab_cursor *cur,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  ExpertCsr *pCsr = (ExpertCsr*)cur;
  ExpertVtab *pVtab = (ExpertVtab*)(cur->pVtab);
  sqlite3expert *pExpert = pVtab->pExpert;
  int rc;

  (void)idxNum;
  (void)idxStr;
  (void)argc;
  (void)argv;
  rc = sqlite3_finalize(pCsr->pData);
  pCsr->pData = 0;
  if( rc==SQLITE_OK ){
    rc = idxPrintfPrepareStmt(pExpert->db, &pCsr->pData, &pVtab->base.zErrMsg,
        "SELECT * FROM main.%Q WHERE sample()", pVtab->pTab->zName
    );
  }

  if( rc==SQLITE_OK ){
    rc = expertNext(cur);
  }
  return rc;
}
