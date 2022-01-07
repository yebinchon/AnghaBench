
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ isInterrupted; } ;
struct TYPE_11__ {scalar_t__ nBusy; } ;
struct TYPE_13__ {scalar_t__ nVdbeActive; int mutex; TYPE_2__ u1; TYPE_1__ busyHandler; } ;
typedef TYPE_3__ sqlite3 ;


 int SQLITE_CHECKPOINT_FULL ;
 int SQLITE_CHECKPOINT_PASSIVE ;
 int SQLITE_CHECKPOINT_RESTART ;
 int SQLITE_CHECKPOINT_TRUNCATE ;
 int SQLITE_ERROR ;
 int SQLITE_MAX_ATTACHED ;
 int SQLITE_MISUSE ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3ApiExit (TYPE_3__*,int) ;
 int sqlite3Checkpoint (TYPE_3__*,int,int,int*,int*) ;
 int sqlite3Error (TYPE_3__*,int) ;
 int sqlite3ErrorWithMsg (TYPE_3__*,int,char*,char const*) ;
 int sqlite3FindDbName (TYPE_3__*,char const*) ;
 int sqlite3SafetyCheckOk (TYPE_3__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_wal_checkpoint_v2(
  sqlite3 *db,
  const char *zDb,
  int eMode,
  int *pnLog,
  int *pnCkpt
){



  int rc;
  int iDb = SQLITE_MAX_ATTACHED;






  if( pnLog ) *pnLog = -1;
  if( pnCkpt ) *pnCkpt = -1;

  assert( SQLITE_CHECKPOINT_PASSIVE==0 );
  assert( SQLITE_CHECKPOINT_FULL==1 );
  assert( SQLITE_CHECKPOINT_RESTART==2 );
  assert( SQLITE_CHECKPOINT_TRUNCATE==3 );
  if( eMode<SQLITE_CHECKPOINT_PASSIVE || eMode>SQLITE_CHECKPOINT_TRUNCATE ){


    return SQLITE_MISUSE;
  }

  sqlite3_mutex_enter(db->mutex);
  if( zDb && zDb[0] ){
    iDb = sqlite3FindDbName(db, zDb);
  }
  if( iDb<0 ){
    rc = SQLITE_ERROR;
    sqlite3ErrorWithMsg(db, SQLITE_ERROR, "unknown database: %s", zDb);
  }else{
    db->busyHandler.nBusy = 0;
    rc = sqlite3Checkpoint(db, iDb, eMode, pnLog, pnCkpt);
    sqlite3Error(db, rc);
  }
  rc = sqlite3ApiExit(db, rc);



  if( db->nVdbeActive==0 ){
    db->u1.isInterrupted = 0;
  }

  sqlite3_mutex_leave(db->mutex);
  return rc;

}
