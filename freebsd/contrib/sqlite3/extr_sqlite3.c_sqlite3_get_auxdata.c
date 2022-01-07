
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ iOp; TYPE_3__* pVdbe; TYPE_2__* pOut; } ;
typedef TYPE_4__ sqlite3_context ;
struct TYPE_11__ {int iAuxArg; scalar_t__ iAuxOp; void* pAux; struct TYPE_11__* pNextAux; } ;
struct TYPE_9__ {TYPE_5__* pAuxData; } ;
struct TYPE_8__ {TYPE_1__* db; } ;
struct TYPE_7__ {int mutex; } ;
typedef TYPE_5__ AuxData ;


 int assert (int) ;
 int sqlite3_mutex_held (int ) ;

void *sqlite3_get_auxdata(sqlite3_context *pCtx, int iArg){
  AuxData *pAuxData;

  assert( sqlite3_mutex_held(pCtx->pOut->db->mutex) );



  assert( pCtx->pVdbe!=0 );

  for(pAuxData=pCtx->pVdbe->pAuxData; pAuxData; pAuxData=pAuxData->pNextAux){
    if( pAuxData->iAuxArg==iArg && (pAuxData->iAuxOp==pCtx->iOp || iArg<0) ){
      return pAuxData->pAux;
    }
  }
  return 0;
}
