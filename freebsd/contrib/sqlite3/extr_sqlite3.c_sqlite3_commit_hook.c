
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* xCommitCallback ) (void*) ;int mutex; void* pCommitArg; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_MISUSE_BKPT ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

void *sqlite3_commit_hook(
  sqlite3 *db,
  int (*xCallback)(void*),
  void *pArg
){
  void *pOld;







  sqlite3_mutex_enter(db->mutex);
  pOld = db->pCommitArg;
  db->xCommitCallback = xCallback;
  db->pCommitArg = pArg;
  sqlite3_mutex_leave(db->mutex);
  return pOld;
}
