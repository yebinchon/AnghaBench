
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* aLimit; } ;
typedef TYPE_1__ sqlite3 ;


 size_t SQLITE_LIMIT_ATTACHED ;
 size_t SQLITE_LIMIT_COLUMN ;
 size_t SQLITE_LIMIT_COMPOUND_SELECT ;
 size_t SQLITE_LIMIT_EXPR_DEPTH ;
 size_t SQLITE_LIMIT_FUNCTION_ARG ;
 size_t SQLITE_LIMIT_LENGTH ;
 size_t SQLITE_LIMIT_LIKE_PATTERN_LENGTH ;
 size_t SQLITE_LIMIT_SQL_LENGTH ;
 size_t SQLITE_LIMIT_TRIGGER_DEPTH ;
 size_t SQLITE_LIMIT_VARIABLE_NUMBER ;
 size_t SQLITE_LIMIT_VDBE_OP ;
 size_t SQLITE_LIMIT_WORKER_THREADS ;
 int SQLITE_MAX_ATTACHED ;
 int SQLITE_MAX_COLUMN ;
 int SQLITE_MAX_COMPOUND_SELECT ;
 int SQLITE_MAX_EXPR_DEPTH ;
 int SQLITE_MAX_FUNCTION_ARG ;
 int SQLITE_MAX_LENGTH ;
 int SQLITE_MAX_LIKE_PATTERN_LENGTH ;
 int SQLITE_MAX_SQL_LENGTH ;
 int SQLITE_MAX_TRIGGER_DEPTH ;
 int SQLITE_MAX_VARIABLE_NUMBER ;
 int SQLITE_MAX_VDBE_OP ;
 int SQLITE_MAX_WORKER_THREADS ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_N_LIMIT ;
 int* aHardLimit ;
 int assert (int) ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;

int sqlite3_limit(sqlite3 *db, int limitId, int newLimit){
  int oldLimit;
  assert( aHardLimit[SQLITE_LIMIT_LENGTH]==SQLITE_MAX_LENGTH );
  assert( aHardLimit[SQLITE_LIMIT_SQL_LENGTH]==SQLITE_MAX_SQL_LENGTH );
  assert( aHardLimit[SQLITE_LIMIT_COLUMN]==SQLITE_MAX_COLUMN );
  assert( aHardLimit[SQLITE_LIMIT_EXPR_DEPTH]==SQLITE_MAX_EXPR_DEPTH );
  assert( aHardLimit[SQLITE_LIMIT_COMPOUND_SELECT]==SQLITE_MAX_COMPOUND_SELECT);
  assert( aHardLimit[SQLITE_LIMIT_VDBE_OP]==SQLITE_MAX_VDBE_OP );
  assert( aHardLimit[SQLITE_LIMIT_FUNCTION_ARG]==SQLITE_MAX_FUNCTION_ARG );
  assert( aHardLimit[SQLITE_LIMIT_ATTACHED]==SQLITE_MAX_ATTACHED );
  assert( aHardLimit[SQLITE_LIMIT_LIKE_PATTERN_LENGTH]==
                                               SQLITE_MAX_LIKE_PATTERN_LENGTH );
  assert( aHardLimit[SQLITE_LIMIT_VARIABLE_NUMBER]==SQLITE_MAX_VARIABLE_NUMBER);
  assert( aHardLimit[SQLITE_LIMIT_TRIGGER_DEPTH]==SQLITE_MAX_TRIGGER_DEPTH );
  assert( aHardLimit[SQLITE_LIMIT_WORKER_THREADS]==SQLITE_MAX_WORKER_THREADS );
  assert( SQLITE_LIMIT_WORKER_THREADS==(SQLITE_N_LIMIT-1) );


  if( limitId<0 || limitId>=SQLITE_N_LIMIT ){
    return -1;
  }
  oldLimit = db->aLimit[limitId];
  if( newLimit>=0 ){
    if( newLimit>aHardLimit[limitId] ){
      newLimit = aHardLimit[limitId];
    }
    db->aLimit[limitId] = newLimit;
  }
  return oldLimit;
}
