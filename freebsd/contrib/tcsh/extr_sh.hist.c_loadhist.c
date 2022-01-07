
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Hist {int Href; int Hnum; struct Hist* Hnext; } ;
typedef int Char ;


 struct Hist Histlist ;
 int * STRNULL ;
 int STRhistfile ;
 int * STRmh ;
 int * STRmm ;

 int * STRtildothist ;
 int dosource (int **,int *) ;
 int eventno ;
 int * varval (int ) ;

void
loadhist(Char *fname, int mflg)
{
    static Char *loadhist_cmd[] = {128, ((void*)0), ((void*)0), ((void*)0)};
    loadhist_cmd[1] = mflg ? STRmm : STRmh;

    if (fname != ((void*)0))
 loadhist_cmd[2] = fname;
    else if ((fname = varval(STRhistfile)) != STRNULL)
 loadhist_cmd[2] = fname;
    else
 loadhist_cmd[2] = STRtildothist;

    dosource(loadhist_cmd, ((void*)0));




    if (mflg) {
 int n = eventno;
        struct Hist *hp = &Histlist;
        while ((hp = hp->Hnext))
     hp->Hnum = hp->Href = n--;
    }
}
