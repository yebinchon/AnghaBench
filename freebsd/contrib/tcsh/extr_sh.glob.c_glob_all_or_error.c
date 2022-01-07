
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int ERR_NAME ;
 int ERR_NOMATCH ;
 int ** globall (int **,int) ;
 int ** saveblk (int **) ;
 int stderror (int) ;
 int tglob (int **) ;
 int trim (int **) ;

Char **
glob_all_or_error(Char **v)
{
    int gflag;

    gflag = tglob(v);
    if (gflag) {
 v = globall(v, gflag);
 if (v == ((void*)0))
     stderror(ERR_NAME | ERR_NOMATCH);
    } else {
 v = saveblk(v);
 trim(v);
    }
    return v;
}
