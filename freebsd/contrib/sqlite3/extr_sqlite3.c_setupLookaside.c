
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
typedef int sqlite3_int64 ;
struct TYPE_7__ {int bMalloced; int nSlot; int bDisable; TYPE_2__* pEnd; TYPE_2__* pStart; TYPE_2__* pInit; scalar_t__ sz; scalar_t__ pFree; } ;
struct TYPE_8__ {TYPE_1__ lookaside; struct TYPE_8__* pNext; } ;
typedef TYPE_2__ sqlite3 ;
typedef TYPE_2__ LookasideSlot ;


 int ROUNDDOWN8 (int) ;
 int SQLITE_BUSY ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3EndBenignMalloc () ;
 scalar_t__ sqlite3LookasideUsed (TYPE_2__*,int ) ;
 void* sqlite3Malloc (int) ;
 int sqlite3MallocSize (void*) ;
 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static int setupLookaside(sqlite3 *db, void *pBuf, int sz, int cnt){

  void *pStart;

  if( sqlite3LookasideUsed(db,0)>0 ){
    return SQLITE_BUSY;
  }




  if( db->lookaside.bMalloced ){
    sqlite3_free(db->lookaside.pStart);
  }



  sz = ROUNDDOWN8(sz);
  if( sz<=(int)sizeof(LookasideSlot*) ) sz = 0;
  if( cnt<0 ) cnt = 0;
  if( sz==0 || cnt==0 ){
    sz = 0;
    pStart = 0;
  }else if( pBuf==0 ){
    sqlite3BeginBenignMalloc();
    pStart = sqlite3Malloc( sz*(sqlite3_int64)cnt );
    sqlite3EndBenignMalloc();
    if( pStart ) cnt = sqlite3MallocSize(pStart)/sz;
  }else{
    pStart = pBuf;
  }
  db->lookaside.pStart = pStart;
  db->lookaside.pInit = 0;
  db->lookaside.pFree = 0;
  db->lookaside.sz = (u16)sz;
  if( pStart ){
    int i;
    LookasideSlot *p;
    assert( sz > (int)sizeof(LookasideSlot*) );
    db->lookaside.nSlot = cnt;
    p = (LookasideSlot*)pStart;
    for(i=cnt-1; i>=0; i--){
      p->pNext = db->lookaside.pInit;
      db->lookaside.pInit = p;
      p = (LookasideSlot*)&((u8*)p)[sz];
    }
    db->lookaside.pEnd = p;
    db->lookaside.bDisable = 0;
    db->lookaside.bMalloced = pBuf==0 ?1:0;
  }else{
    db->lookaside.pStart = db;
    db->lookaside.pEnd = db;
    db->lookaside.bDisable = 1;
    db->lookaside.bMalloced = 0;
    db->lookaside.nSlot = 0;
  }

  return SQLITE_OK;
}
