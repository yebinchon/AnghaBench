
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_4__ {int lastRowid; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_MISUSE_BKPT ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;

sqlite_int64 sqlite3_last_insert_rowid(sqlite3 *db){






  return db->lastRowid;
}
