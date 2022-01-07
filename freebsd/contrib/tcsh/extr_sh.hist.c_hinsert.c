
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Hist {struct Hist* Hprev; struct Hist* Hnext; } ;


 int histCount ;
 struct Hist* histTail ;

__attribute__((used)) static void
hinsert(struct Hist *hp, struct Hist *pp)
{
    struct Hist *fp = pp->Hnext;
    hp->Hnext = fp, hp->Hprev = pp;
    pp->Hnext = hp;
    if (fp)
        fp->Hprev = hp;
    else
        histTail = hp;
    histCount++;
}
