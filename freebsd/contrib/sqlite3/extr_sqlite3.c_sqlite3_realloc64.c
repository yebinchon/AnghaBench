
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_uint64 ;


 void* sqlite3Realloc (void*,int ) ;
 scalar_t__ sqlite3_initialize () ;

void *sqlite3_realloc64(void *pOld, sqlite3_uint64 n){

  if( sqlite3_initialize() ) return 0;

  return sqlite3Realloc(pOld, n);
}
