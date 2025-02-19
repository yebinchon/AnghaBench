
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pFirst; TYPE_1__** aHash; } ;
struct TYPE_5__ {char const* zKey; char* zVal; struct TYPE_5__* pNext; struct TYPE_5__* pHashNext; } ;
typedef TYPE_1__ IdxHashEntry ;
typedef TYPE_2__ IdxHash ;


 int STRLEN (char const*) ;
 int assert (int) ;
 int idxHashString (char const*,int) ;
 TYPE_1__* idxMalloc (int*,int) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static int idxHashAdd(
  int *pRc,
  IdxHash *pHash,
  const char *zKey,
  const char *zVal
){
  int nKey = STRLEN(zKey);
  int iHash = idxHashString(zKey, nKey);
  int nVal = (zVal ? STRLEN(zVal) : 0);
  IdxHashEntry *pEntry;
  assert( iHash>=0 );
  for(pEntry=pHash->aHash[iHash]; pEntry; pEntry=pEntry->pHashNext){
    if( STRLEN(pEntry->zKey)==nKey && 0==memcmp(pEntry->zKey, zKey, nKey) ){
      return 1;
    }
  }
  pEntry = idxMalloc(pRc, sizeof(IdxHashEntry) + nKey+1 + nVal+1);
  if( pEntry ){
    pEntry->zKey = (char*)&pEntry[1];
    memcpy(pEntry->zKey, zKey, nKey);
    if( zVal ){
      pEntry->zVal = &pEntry->zKey[nKey+1];
      memcpy(pEntry->zVal, zVal, nVal);
    }
    pEntry->pHashNext = pHash->aHash[iHash];
    pHash->aHash[iHash] = pEntry;

    pEntry->pNext = pHash->pFirst;
    pHash->pFirst = pEntry;
  }
  return 0;
}
