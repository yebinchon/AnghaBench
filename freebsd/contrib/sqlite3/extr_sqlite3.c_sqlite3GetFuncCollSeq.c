
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int iOp; TYPE_1__* pVdbe; } ;
typedef TYPE_3__ sqlite3_context ;
struct TYPE_7__ {int * pColl; } ;
struct TYPE_9__ {scalar_t__ opcode; scalar_t__ p4type; TYPE_2__ p4; } ;
typedef TYPE_4__ VdbeOp ;
struct TYPE_6__ {TYPE_4__* aOp; } ;
typedef int CollSeq ;


 scalar_t__ OP_CollSeq ;
 scalar_t__ P4_COLLSEQ ;
 int assert (int) ;

__attribute__((used)) static CollSeq *sqlite3GetFuncCollSeq(sqlite3_context *context){
  VdbeOp *pOp;
  assert( context->pVdbe!=0 );
  pOp = &context->pVdbe->aOp[context->iOp-1];
  assert( pOp->opcode==OP_CollSeq );
  assert( pOp->p4type==P4_COLLSEQ );
  return pOp->p4.pColl;
}
