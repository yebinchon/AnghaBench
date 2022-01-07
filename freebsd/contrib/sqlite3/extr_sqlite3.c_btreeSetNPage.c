
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nPage; int pPager; } ;
struct TYPE_5__ {int * aData; } ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtShared ;


 int get4byte (int *) ;
 int sqlite3PagerPagecount (int ,int*) ;
 int testcase (int) ;

__attribute__((used)) static void btreeSetNPage(BtShared *pBt, MemPage *pPage1){
  int nPage = get4byte(&pPage1->aData[28]);
  testcase( nPage==0 );
  if( nPage==0 ) sqlite3PagerPagecount(pBt->pPager, &nPage);
  testcase( pBt->nPage!=nPage );
  pBt->nPage = nPage;
}
