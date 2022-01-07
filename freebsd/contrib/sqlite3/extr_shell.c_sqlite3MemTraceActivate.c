
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ xMalloc; } ;
typedef int FILE ;


 int SQLITE_CONFIG_GETMALLOC ;
 int SQLITE_CONFIG_MALLOC ;
 int SQLITE_OK ;
 TYPE_1__ ersaztMethods ;
 TYPE_1__ memtraceBase ;
 int * memtraceOut ;
 int sqlite3_config (int ,TYPE_1__*) ;

int sqlite3MemTraceActivate(FILE *out){
  int rc = SQLITE_OK;
  if( memtraceBase.xMalloc==0 ){
    rc = sqlite3_config(SQLITE_CONFIG_GETMALLOC, &memtraceBase);
    if( rc==SQLITE_OK ){
      rc = sqlite3_config(SQLITE_CONFIG_MALLOC, &ersaztMethods);
    }
  }
  memtraceOut = out;
  return rc;
}
