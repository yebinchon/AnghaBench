
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int nWiData; int ** apWiData; } ;
typedef TYPE_1__ Wal ;


 int SQLITE_OK ;
 int walIndexPageRealloc (TYPE_1__*,int,int volatile**) ;

__attribute__((used)) static int walIndexPage(
  Wal *pWal,
  int iPage,
  volatile u32 **ppPage
){
  if( pWal->nWiData<=iPage || (*ppPage = pWal->apWiData[iPage])==0 ){
    return walIndexPageRealloc(pWal, iPage, ppPage);
  }
  return SQLITE_OK;
}
