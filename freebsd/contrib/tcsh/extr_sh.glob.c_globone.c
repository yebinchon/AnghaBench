
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int ERR_NAME ;
 int ERR_NOMATCH ;
 int G_CSH ;
 int G_GLOB ;
 int G_NONE ;
 int * STRNULL ;
 int STRnoglob ;
 int * Strsave (int *) ;
 scalar_t__ adrof (int ) ;
 int blk_cleanup ;
 int cleanup_ignore (int **) ;
 int cleanup_push (int **,int ) ;
 int cleanup_until (int **) ;
 int ** globexpand (int **,int) ;
 int * handleone (int *,int **,int) ;
 int ** libglob (int **) ;
 int setname (int ) ;
 int short2str (int *) ;
 int stderror (int) ;
 int * strip (int *) ;
 int tglob (int **) ;
 int xfree (int **) ;

Char *
globone(Char *str, int action)
{
    Char *v[2], **vl, **vo;
    int gflg, noglob;

    noglob = adrof(STRnoglob) != 0;
    v[0] = str;
    v[1] = 0;
    gflg = tglob(v);
    if (gflg == G_NONE)
 return (strip(Strsave(str)));

    if (gflg & G_CSH) {



 vo = globexpand(v, noglob);
 if (noglob || (gflg & G_GLOB) == 0) {
     vl = vo;
     goto result;
 }
 cleanup_push(vo, blk_cleanup);
    }
    else if (noglob || (gflg & G_GLOB) == 0)
 return (strip(Strsave(str)));
    else
 vo = v;

    vl = libglob(vo);
    if (gflg & G_CSH) {
     if (vl != vo)
     cleanup_until(vo);
 else
     cleanup_ignore(vo);
    }
    if (vl == ((void*)0)) {
 setname(short2str(str));
 stderror(ERR_NAME | ERR_NOMATCH);
    }
 result:
    if (vl && vl[0] == ((void*)0)) {
 xfree(vl);
 return (Strsave(STRNULL));
    }
    if (vl && vl[1])
 return (handleone(str, vl, action));
    else {
 str = strip(*vl);
 xfree(vl);
 return (str);
    }
}
