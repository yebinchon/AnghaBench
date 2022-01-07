
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int iPKey; } ;
typedef TYPE_2__ Table ;
struct TYPE_8__ {int nCol; TYPE_1__* aCol; } ;
struct TYPE_6__ {int iFrom; } ;
typedef TYPE_3__ FKey ;



__attribute__((used)) static int fkChildIsModified(
  Table *pTab,
  FKey *p,
  int *aChange,
  int bChngRowid
){
  int i;
  for(i=0; i<p->nCol; i++){
    int iChildKey = p->aCol[i].iFrom;
    if( aChange[iChildKey]>=0 ) return 1;
    if( iChildKey==pTab->iPKey && bChngRowid ) return 1;
  }
  return 0;
}
