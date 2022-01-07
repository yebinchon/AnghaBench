
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ReusableSpace {void* pSpace; size_t nFree; int nNeeded; } ;
typedef size_t sqlite3_int64 ;


 int EIGHT_BYTE_ALIGNMENT (void*) ;
 size_t ROUND8 (size_t) ;
 int assert (int ) ;

__attribute__((used)) static void *allocSpace(
  struct ReusableSpace *p,
  void *pBuf,
  sqlite3_int64 nByte
){
  assert( EIGHT_BYTE_ALIGNMENT(p->pSpace) );
  if( pBuf==0 ){
    nByte = ROUND8(nByte);
    if( nByte <= p->nFree ){
      p->nFree -= nByte;
      pBuf = &p->pSpace[p->nFree];
    }else{
      p->nNeeded += nByte;
    }
  }
  assert( EIGHT_BYTE_ALIGNMENT(pBuf) );
  return pBuf;
}
