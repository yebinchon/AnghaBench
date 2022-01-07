
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pPreallocatedUnused; int mmapSize; scalar_t__ pMapRegion; } ;
typedef TYPE_1__ unixFile ;
typedef int u8 ;
typedef int sqlite3_int64 ;
typedef int sqlite3_file ;


 int PENDING_BYTE ;
 int SQLITE_IOERR_READ ;
 int SQLITE_IOERR_SHORT_READ ;
 int SQLITE_OK ;
 int assert (int) ;
 int memcpy (void*,int *,int) ;
 int memset (char*,int ,int) ;
 int seekAndRead (TYPE_1__*,int,void*,int) ;
 int storeLastErrno (TYPE_1__*,int ) ;

__attribute__((used)) static int unixRead(
  sqlite3_file *id,
  void *pBuf,
  int amt,
  sqlite3_int64 offset
){
  unixFile *pFile = (unixFile *)id;
  int got;
  assert( id );
  assert( offset>=0 );
  assert( amt>0 );
  got = seekAndRead(pFile, offset, pBuf, amt);
  if( got==amt ){
    return SQLITE_OK;
  }else if( got<0 ){

    return SQLITE_IOERR_READ;
  }else{
    storeLastErrno(pFile, 0);

    memset(&((char*)pBuf)[got], 0, amt-got);
    return SQLITE_IOERR_SHORT_READ;
  }
}
