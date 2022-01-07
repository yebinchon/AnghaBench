
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_OK ;
 scalar_t__ unixBigLock ;

int sqlite3_os_end(void){
  unixBigLock = 0;
  return SQLITE_OK;
}
