
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t ht_slot ;
typedef int aSub ;


 int ArraySize (struct Sublist*) ;
 int const HASHTABLE_NPAGE ;
 int assert (int) ;
 int memset (struct Sublist*,int ,int) ;
 int walMerge (int const*,size_t*,int,size_t**,int*,size_t*) ;

__attribute__((used)) static void walMergesort(
  const u32 *aContent,
  ht_slot *aBuffer,
  ht_slot *aList,
  int *pnList
){
  struct Sublist {
    int nList;
    ht_slot *aList;
  };

  const int nList = *pnList;
  int nMerge = 0;
  ht_slot *aMerge = 0;
  int iList;
  u32 iSub = 0;
  struct Sublist aSub[13];

  memset(aSub, 0, sizeof(aSub));
  assert( nList<=HASHTABLE_NPAGE && nList>0 );
  assert( HASHTABLE_NPAGE==(1<<(ArraySize(aSub)-1)) );

  for(iList=0; iList<nList; iList++){
    nMerge = 1;
    aMerge = &aList[iList];
    for(iSub=0; iList & (1<<iSub); iSub++){
      struct Sublist *p;
      assert( iSub<ArraySize(aSub) );
      p = &aSub[iSub];
      assert( p->aList && p->nList<=(1<<iSub) );
      assert( p->aList==&aList[iList&~((2<<iSub)-1)] );
      walMerge(aContent, p->aList, p->nList, &aMerge, &nMerge, aBuffer);
    }
    aSub[iSub].aList = aMerge;
    aSub[iSub].nList = nMerge;
  }

  for(iSub++; iSub<ArraySize(aSub); iSub++){
    if( nList & (1<<iSub) ){
      struct Sublist *p;
      assert( iSub<ArraySize(aSub) );
      p = &aSub[iSub];
      assert( p->nList<=(1<<iSub) );
      assert( p->aList==&aList[nList&~((2<<iSub)-1)] );
      walMerge(aContent, p->aList, p->nList, &aMerge, &nMerge, aBuffer);
    }
  }
  assert( aMerge==aList );
  *pnList = nMerge;
}
