
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ iTab; scalar_t__ iSortIdx; scalar_t__ rSetup; int wsFlags; scalar_t__ nSkip; int prereq; scalar_t__ rRun; scalar_t__ nOut; struct TYPE_5__* pNextLoop; } ;
typedef TYPE_1__ WhereLoop ;


 int WHERE_AUTO_INDEX ;
 int WHERE_COLUMN_EQ ;
 int WHERE_INDEXED ;
 int assert (int) ;

__attribute__((used)) static WhereLoop **whereLoopFindLesser(
  WhereLoop **ppPrev,
  const WhereLoop *pTemplate
){
  WhereLoop *p;
  for(p=(*ppPrev); p; ppPrev=&p->pNextLoop, p=*ppPrev){
    if( p->iTab!=pTemplate->iTab || p->iSortIdx!=pTemplate->iSortIdx ){



      continue;
    }



    assert( p->rSetup==0 || pTemplate->rSetup==0
                 || p->rSetup==pTemplate->rSetup );




    assert( p->rSetup>=pTemplate->rSetup );




    if( (p->wsFlags & WHERE_AUTO_INDEX)!=0
     && (pTemplate->nSkip)==0
     && (pTemplate->wsFlags & WHERE_INDEXED)!=0
     && (pTemplate->wsFlags & WHERE_COLUMN_EQ)!=0
     && (p->prereq & pTemplate->prereq)==pTemplate->prereq
    ){
      break;
    }






    if( (p->prereq & pTemplate->prereq)==p->prereq
     && p->rSetup<=pTemplate->rSetup
     && p->rRun<=pTemplate->rRun
     && p->nOut<=pTemplate->nOut
    ){
      return 0;
    }






    if( (p->prereq & pTemplate->prereq)==pTemplate->prereq
     && p->rRun>=pTemplate->rRun
     && p->nOut>=pTemplate->nOut
    ){
      assert( p->rSetup>=pTemplate->rSetup );
      break;
    }
  }
  return ppPrev;
}
