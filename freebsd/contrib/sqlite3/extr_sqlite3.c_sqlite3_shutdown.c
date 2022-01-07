
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ isMutexInit; scalar_t__ isMallocInit; scalar_t__ isPCacheInit; scalar_t__ isInit; } ;


 int SQLITE_OK ;
 TYPE_1__ sqlite3GlobalConfig ;
 int sqlite3MallocEnd () ;
 int sqlite3MutexEnd () ;
 int sqlite3PcacheShutdown () ;
 scalar_t__ sqlite3_data_directory ;
 int sqlite3_os_end () ;
 int sqlite3_reset_auto_extension () ;
 scalar_t__ sqlite3_temp_directory ;
 int sqlite3_wsd_init (int,int) ;

int sqlite3_shutdown(void){







  if( sqlite3GlobalConfig.isInit ){




    sqlite3_os_end();
    sqlite3_reset_auto_extension();
    sqlite3GlobalConfig.isInit = 0;
  }
  if( sqlite3GlobalConfig.isPCacheInit ){
    sqlite3PcacheShutdown();
    sqlite3GlobalConfig.isPCacheInit = 0;
  }
  if( sqlite3GlobalConfig.isMallocInit ){
    sqlite3MallocEnd();
    sqlite3GlobalConfig.isMallocInit = 0;
    sqlite3_data_directory = 0;
    sqlite3_temp_directory = 0;

  }
  if( sqlite3GlobalConfig.isMutexInit ){
    sqlite3MutexEnd();
    sqlite3GlobalConfig.isMutexInit = 0;
  }

  return SQLITE_OK;
}
