
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nTotalChange; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_MISUSE_BKPT ;
 int sqlite3SafetyCheckOk (TYPE_1__*) ;

int sqlite3_total_changes(sqlite3 *db){






  return db->nTotalChange;
}
