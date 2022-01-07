
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Hist {struct Hist* histline; int Hlex; scalar_t__ Hhash; } ;


 int assert (int) ;
 int freelex (int *) ;
 struct Hist* histMerg ;
 int removeHistHashTable (struct Hist*) ;
 int xfree (struct Hist*) ;

__attribute__((used)) static void
hfree(struct Hist *hp)
{
    assert(hp != histMerg);
    if (hp->Hhash)
        removeHistHashTable(hp);
    freelex(&hp->Hlex);
    if (hp->histline)
        xfree(hp->histline);
    xfree(hp);
}
