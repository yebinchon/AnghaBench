#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__** aHash; } ;
struct TYPE_5__ {char const* zKey; struct TYPE_5__* pHashNext; } ;
typedef  TYPE_1__ IdxHashEntry ;
typedef  TYPE_2__ IdxHash ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (char const*,char const*,int) ; 

__attribute__((used)) static IdxHashEntry *FUNC4(IdxHash *pHash, const char *zKey, int nKey){
  int iHash;
  IdxHashEntry *pEntry;
  if( nKey<0 ) nKey = FUNC0(zKey);
  iHash = FUNC2(zKey, nKey);
  FUNC1( iHash>=0 );
  for(pEntry=pHash->aHash[iHash]; pEntry; pEntry=pEntry->pHashNext){
    if( FUNC0(pEntry->zKey)==nKey && 0==FUNC3(pEntry->zKey, zKey, nKey) ){
      return pEntry;
    }
  }
  return 0;
}