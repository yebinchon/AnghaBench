
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double i64 ;
struct TYPE_3__ {int enc; int n; int z; } ;
typedef TYPE_1__ Mem ;


 scalar_t__ sqlite3Atoi64 (int ,double*,int ,int ) ;
 scalar_t__ sqlite3RealSameAsInt (double,double) ;

__attribute__((used)) static int alsoAnInt(Mem *pRec, double rValue, i64 *piValue){
  i64 iValue = (double)rValue;
  if( sqlite3RealSameAsInt(rValue,iValue) ){
    *piValue = iValue;
    return 1;
  }
  return 0==sqlite3Atoi64(pRec->z, piValue, pRec->n, pRec->enc);
}
