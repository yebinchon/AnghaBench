
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void (* xProfile ) (void*,char const*,sqlite_uint64) ;int mutex; int mTrace; void* pProfileArg; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_MISUSE_BKPT ;
 int SQLITE_TRACE_NONLEGACY_MASK ;
 int SQLITE_TRACE_XPROFILE ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

void *sqlite3_profile(
  sqlite3 *db,
  void (*xProfile)(void*,const char*,sqlite_uint64),
  void *pArg
){
  void *pOld;







  sqlite3_mutex_enter(db->mutex);
  pOld = db->pProfileArg;
  db->xProfile = xProfile;
  db->pProfileArg = pArg;
  db->mTrace &= SQLITE_TRACE_NONLEGACY_MASK;
  if( db->xProfile ) db->mTrace |= SQLITE_TRACE_XPROFILE;
  sqlite3_mutex_leave(db->mutex);
  return pOld;
}
