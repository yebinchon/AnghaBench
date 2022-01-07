
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Hist {unsigned int Hhash; int Hlex; struct Hist* Hnext; } ;


 struct Hist Histlist ;
 int assert (int) ;
 int discardHistHashTable () ;
 scalar_t__ emptyHTE ;
 int getHashTableSize (int) ;
 unsigned int hashhist (int *) ;
 int histCount ;
 scalar_t__* histHashTable ;
 int histHashTableLength ;
 int histlen ;
 int insertHistHashTable (struct Hist*,unsigned int) ;
 int memset (scalar_t__*,int ,int) ;
 scalar_t__* xmalloc (int) ;

__attribute__((used)) static void
createHistHashTable(int hlen)
{
    if (hlen == 0) {
 discardHistHashTable();
        return;
    }
    if (hlen < 0) {
 if (histlen <= 0)
     return;
 hlen = histlen;
    }
    if (histHashTable != ((void*)0)) {
 if (histCount < histHashTableLength * 3 / 4)
     return;
 discardHistHashTable();
    }
    histHashTableLength = getHashTableSize(
 hlen > (int)histCount ? hlen : (int)histCount);
    histHashTable = xmalloc(histHashTableLength * sizeof(struct Hist *));
    memset(histHashTable, 0, histHashTableLength * sizeof(struct Hist *));
    assert(histHashTable[0] == emptyHTE);


    {
        struct Hist *hp;
        for (hp = &Histlist; (hp = hp->Hnext) != ((void*)0);) {
            unsigned lpHash = hashhist(&hp->Hlex);
            assert(!hp->Hhash || hp->Hhash == lpHash);
            hp->Hhash = 0;
            insertHistHashTable(hp, lpHash);
        }
    }
}
