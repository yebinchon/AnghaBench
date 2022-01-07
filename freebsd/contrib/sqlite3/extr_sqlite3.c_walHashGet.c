
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int ht_slot ;
struct TYPE_3__ {int * aPgno; scalar_t__ iZero; int volatile* aHash; } ;
typedef TYPE_1__ WalHashLoc ;
typedef int Wal ;


 size_t HASHTABLE_NPAGE ;
 scalar_t__ HASHTABLE_NPAGE_ONE ;
 int SQLITE_OK ;
 int WALINDEX_HDR_SIZE ;
 int assert (int) ;
 int walIndexPage (int *,int,int **) ;

__attribute__((used)) static int walHashGet(
  Wal *pWal,
  int iHash,
  WalHashLoc *pLoc
){
  int rc;

  rc = walIndexPage(pWal, iHash, &pLoc->aPgno);
  assert( rc==SQLITE_OK || iHash>0 );

  if( rc==SQLITE_OK ){
    pLoc->aHash = (volatile ht_slot *)&pLoc->aPgno[HASHTABLE_NPAGE];
    if( iHash==0 ){
      pLoc->aPgno = &pLoc->aPgno[WALINDEX_HDR_SIZE/sizeof(u32)];
      pLoc->iZero = 0;
    }else{
      pLoc->iZero = HASHTABLE_NPAGE_ONE + (iHash-1)*HASHTABLE_NPAGE;
    }
    pLoc->aPgno = &pLoc->aPgno[-1];
  }
  return rc;
}
