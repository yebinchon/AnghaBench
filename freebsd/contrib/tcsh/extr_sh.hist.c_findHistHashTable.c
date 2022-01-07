
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {int dummy; } ;
struct Hist {unsigned int Hhash; int Hlex; } ;


 int createHistHashTable (int) ;
 struct Hist* deletedHTE ;
 int discardHistHashTable () ;
 struct Hist* emptyHTE ;
 unsigned int hash2tableIndex (unsigned int,int) ;
 scalar_t__ heq (struct wordent*,int *) ;
 struct Hist** histHashTable ;
 int histHashTableLength ;

__attribute__((used)) static struct Hist *
findHistHashTable(struct wordent *lp, unsigned hashval)
{
    unsigned deleted = 0;
    unsigned hi = hashval;
    struct Hist *hp;
    if (!histHashTable)
 return ((void*)0);
    while ((hi = hash2tableIndex(hi, histHashTableLength)),
           (hp = histHashTable[hi]) != emptyHTE) {
        if (hp == deletedHTE)
     deleted++;
 else if (hp->Hhash == hashval && heq(lp, &(hp->Hlex)))
            return hp;
 if (deleted > (histHashTableLength>>4)) {

            discardHistHashTable();
            createHistHashTable(histHashTableLength);
     return findHistHashTable(lp, hashval);
 }
        hi++;
    }
    return ((void*)0);
}
