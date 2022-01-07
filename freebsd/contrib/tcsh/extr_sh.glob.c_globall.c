
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int G_CSH ;
 int G_GLOB ;
 int STRnoglob ;
 scalar_t__ adrof (int ) ;
 int blk_cleanup ;
 int cleanup_ignore (int **) ;
 int cleanup_push (int **,int ) ;
 int cleanup_until (int **) ;
 int ** globexpand (int **,int) ;
 int ** libglob (int **) ;
 int ** saveblk (int **) ;
 int trim (int **) ;

Char **
globall(Char **v, int gflg)
{
    Char **vl, **vo;
    int noglob;

    if (!v || !v[0])
 return saveblk(v);

    noglob = adrof(STRnoglob) != 0;

    if (gflg & G_CSH)



 vl = vo = globexpand(v, noglob);
    else
 vl = vo = saveblk(v);

    if (!noglob && (gflg & G_GLOB)) {
 cleanup_push(vo, blk_cleanup);
 vl = libglob(vo);
 if (vl == vo)
     cleanup_ignore(vo);
 cleanup_until(vo);
    }
    else
 trim(vl);

    return vl;
}
