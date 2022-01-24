#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_int64 ;
struct TYPE_6__ {int alarmThreshold; int nearlyFull; int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {int (* xRoundup ) (int) ;void* (* xMalloc ) (int) ;} ;
struct TYPE_5__ {TYPE_1__ m; } ;

/* Variables and functions */
 scalar_t__ SQLITE_MAX_MEMORY ; 
 int /*<<< orphan*/  SQLITE_STATUS_MALLOC_COUNT ; 
 int /*<<< orphan*/  SQLITE_STATUS_MALLOC_SIZE ; 
 int /*<<< orphan*/  SQLITE_STATUS_MEMORY_USED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__ mem0 ; 
 TYPE_2__ sqlite3GlobalConfig ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 void* FUNC8 (int) ; 
 void* FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(int n, void **pp){
  void *p;
  int nFull;
  FUNC0( FUNC6(mem0.mutex) );
  FUNC0( n>0 );

  /* In Firefox (circa 2017-02-08), xRoundup() is remapped to an internal
  ** implementation of malloc_good_size(), which must be called in debug
  ** mode and specifically when the DMD "Dark Matter Detector" is enabled
  ** or else a crash results.  Hence, do not attempt to optimize out the
  ** following xRoundup() call. */
  nFull = sqlite3GlobalConfig.m.xRoundup(n);

#ifdef SQLITE_MAX_MEMORY
  if( sqlite3StatusValue(SQLITE_STATUS_MEMORY_USED)+nFull>SQLITE_MAX_MEMORY ){
    *pp = 0;
    return;
  }
#endif

  FUNC3(SQLITE_STATUS_MALLOC_SIZE, n);
  if( mem0.alarmThreshold>0 ){
    sqlite3_int64 nUsed = FUNC5(SQLITE_STATUS_MEMORY_USED);
    if( nUsed >= mem0.alarmThreshold - nFull ){
      mem0.nearlyFull = 1;
      FUNC1(nFull);
    }else{
      mem0.nearlyFull = 0;
    }
  }
  p = sqlite3GlobalConfig.m.xMalloc(nFull);
#ifdef SQLITE_ENABLE_MEMORY_MANAGEMENT
  if( p==0 && mem0.alarmThreshold>0 ){
    sqlite3MallocAlarm(nFull);
    p = sqlite3GlobalConfig.m.xMalloc(nFull);
  }
#endif
  if( p ){
    nFull = FUNC2(p);
    FUNC4(SQLITE_STATUS_MEMORY_USED, nFull);
    FUNC4(SQLITE_STATUS_MALLOC_COUNT, 1);
  }
  *pp = p;
}