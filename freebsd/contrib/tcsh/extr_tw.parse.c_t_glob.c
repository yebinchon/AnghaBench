
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jmp_buf_t ;
typedef int Char ;


 int NeedsRedraw ;
 int blklen (int **) ;
 int cleanup_pop_mark (size_t) ;
 size_t cleanup_push_mark () ;
 int executable (int *,int *,int ) ;
 int getexit (int ) ;
 int ** globall (int **,int) ;
 scalar_t__ haderr ;
 int resexit (int ) ;
 scalar_t__ setexit () ;
 int tglob (int **) ;
 int xfree (int *) ;

__attribute__((used)) static int
t_glob(Char ***v, int cmd)
{
    jmp_buf_t osetexit;
    int gflag;

    if (**v == 0)
 return (0);
    gflag = tglob(*v);
    if (gflag) {
 size_t omark;

 getexit(osetexit);
 omark = cleanup_push_mark();
 if (setexit() == 0)
     *v = globall(*v, gflag);
 cleanup_pop_mark(omark);
 resexit(osetexit);
 if (haderr) {
     haderr = 0;
     NeedsRedraw = 1;
     return (-1);
 }
 if (*v == 0)
     return (0);
    }
    else
 return (0);

    if (cmd) {
 Char **av = *v, *p;
 int fwd, i;

 for (i = 0, fwd = 0; av[i] != ((void*)0); i++)
     if (!executable(((void*)0), av[i], 0)) {
  fwd++;
  p = av[i];
  av[i] = ((void*)0);
  xfree(p);
     }
     else if (fwd)
  av[i - fwd] = av[i];

 if (fwd)
     av[i - fwd] = av[i];
    }

    return blklen(*v);
}
