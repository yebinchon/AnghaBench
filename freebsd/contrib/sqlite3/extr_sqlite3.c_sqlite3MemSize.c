
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 scalar_t__ SQLITE_MALLOCSIZE (void*) ;
 int assert (int) ;

__attribute__((used)) static int sqlite3MemSize(void *pPrior){




  sqlite3_int64 *p;
  assert( pPrior!=0 );
  p = (sqlite3_int64*)pPrior;
  p--;
  return (int)p[0];

}
