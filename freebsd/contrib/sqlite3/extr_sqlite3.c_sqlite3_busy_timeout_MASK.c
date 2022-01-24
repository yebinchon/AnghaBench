#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int bExtraFileArg; } ;
struct TYPE_7__ {int busyTimeout; TYPE_1__ busyHandler; } ;
typedef  TYPE_2__ sqlite3 ;

/* Variables and functions */
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int (*) (void*,int),void*) ; 
 scalar_t__ sqliteDefaultBusyCallback ; 

int FUNC2(sqlite3 *db, int ms){
#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) ) return SQLITE_MISUSE_BKPT;
#endif
  if( ms>0 ){
    FUNC1(db, (int(*)(void*,int))sqliteDefaultBusyCallback,
                             (void*)db);
    db->busyTimeout = ms;
    db->busyHandler.bExtraFileArg = 1;
  }else{
    FUNC1(db, 0, 0);
  }
  return SQLITE_OK;
}