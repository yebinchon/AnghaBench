
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Hist {unsigned int Hhash; } ;
struct TYPE_2__ {int deleted; int removeCount; } ;


 int assert (int) ;
 struct Hist* deletedHTE ;
 struct Hist* emptyHTE ;
 size_t hash2tableIndex (unsigned int,int ) ;
 TYPE_1__ hashStats ;
 struct Hist** histHashTable ;
 int histHashTableLength ;

__attribute__((used)) static void
removeHistHashTable(struct Hist *np)
{
    unsigned hi = np->Hhash;
    if (!histHashTable || !hi)
        return;

    while ((hi = hash2tableIndex(hi, histHashTableLength)),
           histHashTable[hi] != emptyHTE) {
        if (np == histHashTable[hi]) {
     unsigned i;
     unsigned deletes = 0;
     histHashTable[hi] = deletedHTE;

     i = 1;
     while (histHashTable[hash2tableIndex(hi+i, histHashTableLength)] ==
     deletedHTE)
  i++;
     if (histHashTable[hash2tableIndex(hi+i, histHashTableLength)] ==
  emptyHTE) {

  deletes = i;
  while (i-- > 0) {
      histHashTable[hash2tableIndex(hi+i, histHashTableLength)] =
   emptyHTE;
  }
     }
     hashStats.deleted += 1 - deletes;
     hashStats.removeCount++;
            return;
        }
        hi++;
    }
    assert(!"Hist entry not found in hash table");
}
