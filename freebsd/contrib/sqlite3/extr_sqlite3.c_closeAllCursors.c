
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* pParent; } ;
typedef TYPE_1__ VdbeFrame ;
struct TYPE_8__ {scalar_t__ nFrame; scalar_t__ pAuxData; int db; TYPE_1__* pDelFrame; int nMem; scalar_t__ aMem; TYPE_1__* pFrame; } ;
typedef TYPE_2__ Vdbe ;


 int assert (int) ;
 int closeCursorsInFrame (TYPE_2__*) ;
 int releaseMemArray (scalar_t__,int ) ;
 int sqlite3VdbeDeleteAuxData (int ,scalar_t__*,int,int ) ;
 int sqlite3VdbeFrameDelete (TYPE_1__*) ;
 int sqlite3VdbeFrameRestore (TYPE_1__*) ;

__attribute__((used)) static void closeAllCursors(Vdbe *p){
  if( p->pFrame ){
    VdbeFrame *pFrame;
    for(pFrame=p->pFrame; pFrame->pParent; pFrame=pFrame->pParent);
    sqlite3VdbeFrameRestore(pFrame);
    p->pFrame = 0;
    p->nFrame = 0;
  }
  assert( p->nFrame==0 );
  closeCursorsInFrame(p);
  if( p->aMem ){
    releaseMemArray(p->aMem, p->nMem);
  }
  while( p->pDelFrame ){
    VdbeFrame *pDel = p->pDelFrame;
    p->pDelFrame = pDel->pParent;
    sqlite3VdbeFrameDelete(pDel);
  }


  if( p->pAuxData ) sqlite3VdbeDeleteAuxData(p->db, &p->pAuxData, -1, 0);
  assert( p->pAuxData==0 );
}
