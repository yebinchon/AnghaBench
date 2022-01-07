
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_6__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_5__ {int (* xRead ) (TYPE_2__*,unsigned char*,int,int) ;} ;


 int APND_MARK_PREFIX ;
 size_t APND_MARK_PREFIX_SZ ;
 int APND_MARK_SIZE ;
 scalar_t__ memcmp (unsigned char*,int ,size_t) ;
 int stub1 (TYPE_2__*,unsigned char*,int,int) ;

__attribute__((used)) static sqlite3_int64 apndReadMark(sqlite3_int64 sz, sqlite3_file *pFile){
  int rc, i;
  sqlite3_int64 iMark;
  unsigned char a[APND_MARK_SIZE];

  if( sz<=APND_MARK_SIZE ) return -1;
  rc = pFile->pMethods->xRead(pFile, a, APND_MARK_SIZE, sz-APND_MARK_SIZE);
  if( rc ) return -1;
  if( memcmp(a, APND_MARK_PREFIX, APND_MARK_PREFIX_SZ)!=0 ) return -1;
  iMark = ((sqlite3_int64)(a[APND_MARK_PREFIX_SZ]&0x7f))<<56;
  for(i=1; i<8; i++){
    iMark += (sqlite3_int64)a[APND_MARK_PREFIX_SZ+i]<<(56-8*i);
  }
  return iMark;
}
