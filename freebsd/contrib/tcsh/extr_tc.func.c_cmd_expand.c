
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {int * word; struct wordent* prev; struct wordent* next; } ;
struct varent {int * vec; } ;
typedef int Char ;


 int CGETS (int,int,char*) ;
 int * STRNULL ;
 int * STRret ;
 int TRUE ;
 struct varent* adrof1 (int *,int *) ;
 int aliases ;
 int * blkexpand (int *) ;
 int blkpr (int *) ;
 int tellmewhat (struct wordent*,int **) ;
 int xprintf (int ,int *) ;
 int xputchar (char) ;

int
cmd_expand(Char *cmd, Char **str)
{
    struct wordent lexp[3];
    struct varent *vp;
    int rv = TRUE;

    lexp[0].next = &lexp[1];
    lexp[1].next = &lexp[2];
    lexp[2].next = &lexp[0];

    lexp[0].prev = &lexp[2];
    lexp[1].prev = &lexp[0];
    lexp[2].prev = &lexp[1];

    lexp[0].word = STRNULL;
    lexp[2].word = STRret;

    if ((vp = adrof1(cmd, &aliases)) != ((void*)0) && vp->vec != ((void*)0)) {
 if (str == ((void*)0)) {
     xprintf(CGETS(22, 1, "%S: \t aliased to "), cmd);
     blkpr(vp->vec);
     xputchar('\n');
 }
 else
     *str = blkexpand(vp->vec);
    }
    else {
 lexp[1].word = cmd;
 rv = tellmewhat(lexp, str);
    }
    return rv;
}
