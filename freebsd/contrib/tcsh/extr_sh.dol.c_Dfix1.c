
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int ** Dfix2 (int **) ;
 int ERR_AMBIG ;
 int ERR_NAME ;
 int * Strsave (int *) ;
 int blkfree (int **) ;
 scalar_t__ noexec ;
 int setname (int ) ;
 int short2str (int *) ;
 int stderror (int) ;

Char *
Dfix1(Char *cp)
{
    Char *Dv[2], **expanded;

    if (noexec)
 return (0);
    Dv[0] = cp;
    Dv[1] = ((void*)0);
    expanded = Dfix2(Dv);
    if (expanded[0] == ((void*)0) || expanded[1] != ((void*)0)) {
 blkfree(expanded);
 setname(short2str(cp));
 stderror(ERR_NAME | ERR_AMBIG);
    }
    cp = Strsave(expanded[0]);
    blkfree(expanded);
    return (cp);
}
